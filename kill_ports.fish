# If you have fixes, or ways to make the commands better, please
# [fork](https://github.com/alber70g/fishedde/fork) and send a pull request

function kill_ports
  for i in $argv
    echo "killing $i"
    lsof -i tcp:$i -s tcp:LISTEN -t | xargs kill -9
  end
end
