
# Set Console Font
if [ $TERM = "linux" ] 
then
	    setfont ter-732b
	    source ~/.plain_bashrc
    elif [ $TERM = "screen-256color" ]
      then
	    source ~/.plain_bashrc
    else
	    source ~/.oh_my_bashrc
fi

source ~/.anaconda-setup
export JAVA_HOME=/home/sunilk/java/jdk1.8u181
export PATH=$JAVA_HOME/bin:$PATH
source ~/.bash_profile
