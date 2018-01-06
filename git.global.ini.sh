ssh-keygen
cp ~/.ssh/id_rsa.pub demopc2id_rsa.pub
git commit -a -m keys ./`hostname`id_rsa.pub
git add ./`hostname`id_rsa.pub
git config --global gmicro300@gmail.com
git config --global user.email gmicro300@gmail.com
git config --global user.name gm300
git remote add local git@github.com:gm300a/setup.git
git push local master
