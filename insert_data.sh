#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # INSERT UNIQUE TEAMS
  if [[ $WINNER != 'winner' ]]
  then
    INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  fi
  if [[ $OPPONENT != 'opponent' ]]
  then
    INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
  fi
  # SELECT WINNER ID 
  WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
  # SELECT OPPONENT_ID
  OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
  
  # INSERT GAMES
  INSERT_GAMES=$($PSQL "INSERT INTO games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) VALUES($YEAR,'$ROUND',$WINNER_GOALS,$OPPONENT_GOALS,$WINNER_ID,$OPPONENT_ID)")
  echo $INSERT_GAMES

  


done
 
