# If you have fixes, or ways to make the commands better, please
# [fork](https://github.com/alber70g/fishedde/fork) and send a pull request

function nowifiproxy 
#  networksetup -setautoproxystate Wi-Fi off
  networksetup -setwebproxystate Wi-Fi off
  networksetup -setsecurewebproxystate Wi-Fi off 
end
