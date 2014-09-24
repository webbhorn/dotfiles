CWD=$(pwd)
FILES=$(ls -a | tr [:blank:] "\n" | grep -v -E "^[\.]+$" | grep -v -E "install.sh")

for f in $FILES
do
  if [ -L ~/$f ]; then
    printf "%10.10s already links to %s%.10s\n" $f $CWD
  else
    echo Linking ~/$f to $CWD/$f...
    ln -s $CWD/$f ~/$f
    echo done
  fi
done
