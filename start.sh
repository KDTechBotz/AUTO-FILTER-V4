if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ritheshrkrm/PiroAutoFilterBot.git /BEN-10-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /BEN-10-BOT
fi
cd /BEN-10-BOT
pip3 install -U -r requirements.txt
echo "Starting BEN-10-BOT...♻️"
python3 bot.py
