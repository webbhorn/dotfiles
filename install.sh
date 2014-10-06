CWD=$(pwd)
FILES=$(ls -a | tr [:blank:] "\n" | grep -v -E "^[\.]+$" | grep -v -E "install.sh" | grep -v -E ".git")

green='\033[0;32m'
red='\033[0;31m'
nc='\033[0m'

for f in $FILES
do
  if [ -L ~/$f ]; then
    printf "${red}SKIP:${nc} %10.10s already links to %s%.10s\n" $f $CWD
  else
    printf "${green}LINK:${nc} ln -s $CWD/f ~/$f"
    ln -s $CWD/$f ~/$f
  fi
done
