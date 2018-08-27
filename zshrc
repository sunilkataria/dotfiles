
ZSH_THEME="powerlevel9k/powerlevel9k"

source ~/.anaconda-setup
# Set Console Font
if [ $TERM = linux ]
then
	    setfont ter-k32b.psf.gz
	    source ~/.plain_zshrc

elif [ $TERM = screen-256color ]
then 
	    source ~/.plain_zshrc
else
	    source ~/.oh_my_zshrc
fi
