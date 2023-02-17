import subprocess

file_path = 'db_count_rows_and_deltas.py' # python script name with .py
file_name = 'log_result.txt'  # it will return a log in a txt file


# self note: remember to change folder to output this file
def execute_and_save(file_path: str, file_name: str):
    result = None
    try:
        result = subprocess.run(['python', file_path], capture_output=True, text=True)
    except Exception as e:
        result = str(e)

    with open(file_name, 'a') as file:
        file.write(result.stdout)


execute_and_save(file_path, file_name)
