# If you have fixes, or ways to make the commands better, please
# [fork](https://github.com/alber70g/fishedde/fork) and send a pull request

function setwifiproxy 
#  networksetup -setautoproxystate Wi-Fi on
  networksetup -setwebproxystate Wi-Fi on
  networksetup -setsecurewebproxystate Wi-Fi on 
end
