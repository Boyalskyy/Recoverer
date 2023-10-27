if [ $# -ne 1 ]; then
  echo "Start: $0 without process name"
  exit 1
fi

process_name="$1"

process_list=$(pgrep "$process_name")

if [ -n "$process_list" ]; then
  echo "Process with name '$process_name' was found:"
  echo "PID :$process_list"
else
  echo "Process with name '$process_name' wasn't found."
  echo "Start process ..."
  ./tg_bot > output.txt
fi