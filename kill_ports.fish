#echo 3000 | awk '{printf("lsof -i tcp:%s -s tcp:LISTEN -t \n", $1);}' | sh | xargs kill -9

function kill_ports
  for i in $argv
    echo "killing $i"
    lsof -i tcp:$i -s tcp:LISTEN -t | xargs kill -9
  end
end
