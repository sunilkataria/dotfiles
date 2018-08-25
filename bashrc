# Path to your oh-my-bash installation.
export OSH=$HOME/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="font"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(core rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(core git bashmarks progress)

if tty -s
then
  source $OSH/oh-my-bash.sh
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

source $HOME/git-repos/ansible-repo/hacking/env-setup -q

function ok-count() {
grep -c  "All OK" ~/extract-folder-`date -I`
}

function iso-count() {
#grep -c ’ ~/loop-`date -I`
grep -c "\->" ~/loop-`date -I`
}

function download-count() {
ls -ltrh /storage/MyJDownloadersDownload/  |grep -c ^d
}

function mkisowithoutrar () {
/bin/mkisofs -o ${1}.iso -J -A -V -v -r -R ${1}/
sudo mv ${1}.iso -v  /storage/ISOs/
sudo sync
#rm -rf ${1}
}

function loop_iso_without_rar () {
cd /storage/MyJDownloadersDownload/
for i in $(ls -1 | grep -v " ")
do
mkisowithoutrar ${i}
done
}

function loop_mkiso () {
unalias ls
cd /storage/MyJDownloadersDownload
for i in `ls -1`; do mkmyiso $i; sleep 5 && rm -rvf $i ;done

}


function mkmyiso () {
/bin/mkisofs -o ${1}.iso -joliet-long -J -A -V -v -r -R ${1}/
sleep 1
sudo mv ${1}.iso -v  /storage/ISOs/
sudo sync
}

