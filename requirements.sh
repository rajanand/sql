# This script will start up your postgres server
REPO_PATH=sql

pip3 install sqlwhat-ext==0.0.1

apt-get update && apt-get install -y unzip

mkdir -p $REPO_PATH/data
# You can replace this with a link to your archive of csv files
wget "https://assets.datacamp.com/course/sql/films.zip"
unzip films.zip -d $REPO_PATH/data

service postgresql start   && sudo -u postgres createdb -O repl films   && cd $REPO_PATH   && sudo -u postgres psql films < data/films/films.sql   && service postgresql stop