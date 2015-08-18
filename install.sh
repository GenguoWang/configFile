#! /bin/bash
path=`pwd`
cp -p .tmux.conf ~/ 
cat ~/.bashrc |grep -q -e 'source .*z\.sh'
if [ $? -eq 0 ]
then
    echo "z.sh exist in .bashrc"
else
    echo "add z.sh in .bashrc .profile"
    echo "source $path/z.sh" >> ~/.bashrc
    echo "source $path/z.sh" >> ~/.profile
fi

echo success
echo "Please reload .bashrc or .profile"
