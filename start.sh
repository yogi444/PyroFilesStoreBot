if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/yogi444/PyroFilesStoreBot.git /PyroFilesStoreBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PyroFilesStoreBot
fi
cd /PyroFilesStoreBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
