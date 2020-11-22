
using System;
using System.Data;
using System.Data.SqlClient;
using System.Management.Automation;

namespace PsSqlClient
{

    [Cmdlet(VerbsLifecycle.Invoke, "Command")]
    [OutputType(typeof(PSObject))]
    public class InvokeCommandCommand : PSCmdlet
    {

        [Parameter(
            Position = 0,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        [ValidateNotNullOrEmpty()]
        public string Text { get; set; }

        [Parameter(
            Position = 1,
            Mandatory = true,
            ValueFromPipeline = true,
            ValueFromPipelineByPropertyName = true)]
        [ValidateNotNullOrEmpty()]
        public SqlConnection Connection { get; set; }

        [Parameter(
            Position = 2,
            Mandatory = false,
            ValueFromPipelineByPropertyName = true)]
        [ValidateNotNullOrEmpty()]
        public int? Timeout { get; set; }

        private void SqlInfoMessageEventHandler(object sender, SqlInfoMessageEventArgs e)
        {
            WriteInformation(messageData: e, tags: null);
        }

        protected override void BeginProcessing() {
            Connection.InfoMessage += SqlInfoMessageEventHandler;
        }

        protected override void EndProcessing() {
            Connection.InfoMessage -= SqlInfoMessageEventHandler;
        }

        protected override void ProcessRecord()
        {
            var command = new SqlCommand(cmdText: Text, connection: Connection);
            if (Timeout.HasValue)
            {
                command.CommandTimeout = Timeout.Value;
            }

            {
                var dataTable = new DataTable();
                using (var dataAdapter = new SqlDataAdapter(command))
                {
                    dataAdapter.Fill(dataTable);
                }

                foreach (DataRow row in dataTable.Rows)
                {
                    var output = new PSObject();
                    foreach (DataColumn column in dataTable.Columns)
                    {
                        output.Members.Add(
                            new PSNoteProperty(
                                name:column.ColumnName,
                                value:row[column]
                            )
                        );
                    }
                    WriteObject(row);
                }
            }
        }

    }
}
