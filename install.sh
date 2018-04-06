#! /bin/bash
path=`pwd`
cp -p .tmux.conf ~/ 
cp -p .ideavimrc ~/ 
cat ~/.bashrc |grep -q -e 'source .*z\.sh'
if [ $? -eq 0 ]
then
    echo "z.sh exist in .bashrc"
else
    echo "add z.sh in .bashrc"
    echo "source $path/z.sh" >> ~/.bashrc
fi

touch ~/.bashrc
touch ~/.profile
ruby installBash.rb $HOME
echo success
echo "Please reload .bashrc"
