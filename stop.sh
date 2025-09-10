pid=$(lsof -ti tcp:$1)
if [[ $pid ]]; then
  kill -9 $pid
  echo "Congrats!! $1 is stopped."
else
  echo "Sorry nothing running on above port"
fi
