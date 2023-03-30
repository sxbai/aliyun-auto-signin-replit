echo "阿里云盘自动签到一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/aliyun-auto-signin-replit"
nix-env -iA nixpkgs.wget
wget -O main.zip https://github.com/ImYrS/aliyun-auto-signin/archive/refs/heads/main.zip
wget -O alisign.zip https://raw.githubusercontent.com/sxbai/aliyun-auto-signin-replit/master/alisign.zip
nix-env -iA nixpkgs.unzip
unzip main.zip
unzip alisign.zip
mv aliyun-auto-signin-main/* .
rm -rf aliyun-auto-signin-main/
cp -r example.config.ini config.ini
pip install -r requirements.txt
rm -rf example.config.ini
rm -rf main.zip && rm -rf How-To-Use-Action.md
rm -rf LICENSE && rm -rf alisign.zip
echo "搭建完成！！！"
echo "阿里云盘自动签到一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/aliyun-auto-signin-replit"
echo "点击Run按钮，启动阿里云盘自动签到项目! 使用愉快!!!"
rm -rf README.md
