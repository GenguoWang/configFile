#! /bin/bash
path=`pwd`
cp -p .tmux.conf ~/ 
cat ~/.bashrc |grep -q -e 'source .*z\.sh'
if [ $? -eq 0 ]
then
    echo "z.sh exist in .bashrc"
else
    echo "add z.sh in .bashrc"
    echo "source $path/z.sh" >> ~/.bashrc
fi
source ~/.bashrc


echo success
