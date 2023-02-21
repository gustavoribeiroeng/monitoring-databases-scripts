import time
import pyodbc
import pytz
import datetime

print('\n\n**********************************************')
today_date = datetime.datetime.today()  # get today's date and time

# set timezone GMT-03:00 - Brazil to date and time
local_time = pytz.timezone('America/Sao_Paulo')
BRA_time = datetime.datetime.now(local_time)
hour = BRA_time.hour
minutes = BRA_time.minute
sec = BRA_time.second
# printing the exactly time execution
print('Date:', today_date.strftime('%d-%m-%Y'))
print(f'Current date and time execution: {hour}:{minutes}:{sec}')

# server connection values
server = ''  # local or remote connection
database = 'PRODDBZSS'
UID = ''  # your username (or root user) to access
authentication = 'Windows Authentication'  # type of auth (for MSSQL Server for example)
encrypt = 'yes'
time_execution = ''
trusted_connection = ''  # to use a variable to set 'yes' or 'no' it will depend on what SGBD you're trying to connect

# connection to a remote MSSQL database
connection_db = pyodbc.connect('DRIVER={SQL Server};SERVER=' + server +
                               ';DATABASE=' + database +
                               ';Authentication=' + authentication +
                               ';Encrypt=' + encrypt +
                               'Trusted_Connection=yes')

# ---------------
print('******')
# create cursor to database
cursor_count = connection_db.cursor()
table_name = 'MOperations'
# execute a SQL query to count the number of rows u have in the table
cursor_count.execute(f'SELECT COUNT(*) FROM PRODDBZSS.dbo.MOperations;')
result_rows = cursor_count.fetchone()
# get count rows
row_count = result_rows[0]
print('Table {} rows count: {}'.format(table_name, row_count))
# close object till this part
cursor_count.close()

# define another cursor to delta counting
cursor_delta = connection_db.cursor()
cursor_delta.execute(
    f'SELECT COUNT(*) FROM PRODDBZSS.dbo.MOperations WHERE MOPS_updated_at BETWEEN DATEADD(day, -1, GETDATE()) AND GETDATE();')
result_delta = cursor_delta.fetchone()
delta_count = result_delta[0]
print('Table {} delta count: {}'.format(table_name, delta_count))
cursor_delta.close()

# close connection to a database - MUST HAVE
connection_db.close()
