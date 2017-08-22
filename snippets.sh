git config color.ui true
	- sets git to use colours properly

git log --pretty --oneline --graph
	- display the proper graph of the git log nicely with lines and colours

Really important files located in the bashfun/ folder
	- makeUsers and delTrainingUsers (creates and deletes users)

git stash drop stash@{n}
	- drops deletes a specific git stash

echo "$-"
if [[ $- == *i* ]] ;
then
  echo "intercact"
fi
	- Displays and checks if the shell is interactive:
		H - histexpand
		m - monitor
		h - hashall
		B - braceexpand
		i - interactive

adb shell screencap -p /sdcard/screen.png
adb pull /sdcard/screen.png
	- screenshot phone and takes fill from shell

while getopts u:d:p:f: option
do
 case "${option}"
 in
 u) USER=${OPTARG};;
 d) DATE=${OPTARG};;
 p) PRODUCT=${OPTARG};;
 f) FORMAT=$OPTARG;;
 esac
done
	- passing in parameters to a script
