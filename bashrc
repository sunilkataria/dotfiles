
source ~/.anaconda-setup
# Set Console Font
if [ $TERM = "linux" ] 
then
	    setfont ter-k32b.psf.gz
	    source ~/.plain_bashrc
    elif [ $TERM = "screen-256color" ]
      then
	    source ~/.plain_bashrc
    else
	    source ~/.oh_my_bashrc
fi
