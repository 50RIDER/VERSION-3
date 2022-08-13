if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/50RIDER/VERSION-3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /imdb_Dynkbot
fi
cd /imdb_Dynkbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
