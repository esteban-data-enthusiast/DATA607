library(tidyverse)
library(data.table)


tourney_file_name <- "C:\\tmp\\tournamentinfo.txt"

# Read the data from the tournament file and store it in a data.table (skip the first 4 rows containing unnecessary header data)
mdt <- data.table(read_csv(tourney_file_name, col_types =  list(col_character()), col_names = c("data"),  skip = 4))

# Take a peak at the data in the table
head(mdt,10)

# From the table, extract the text rows that correspond to the players
players <- mdt[seq(1, nrow(mdt), 3)]

# From the table, extract the text rows that correspond to the players' ratings
player_ratings <- mdt[seq(2, nrow(mdt), 3)]

# take a peak at the players data lines
head(players, 10)

# take a peak at the players' ratings data lines
player_ratings

# Extract the values from the players table
Pair_Num <- as.integer(str_extract(players$data, "\\d+"))             # 1st sequence of numeric characters
Player_Name <- str_trim(str_extract(players$data, "(\\w+\\s){2,3}"))  # 1st instance of 2 or 3 words followed by white space
Total_Points <- as.numeric(str_extract(players$data, "\\d+\\.\\d+"))  # 2nd sequence of numeric characters
# Wins <- str_count(players$data, "\\Q|W  \\E")                         # All instances that start with "|W" followed by 2 spaces
# Losses <- str_count(players$data, "\\Q|L  \\E")                       # All instances that start with "|L" followed by 2 spaces
# Draws <- str_count(players$data, "\\Q|D  \\E")                        # All instances that start with "|D" followed by 2 spaces
Opponents <- str_extract_all(str_extract_all(players$data, "\\d+\\|"), "\\d+") # All instances of numeric characters followed by a pipe |


# Extract the values from the player ratings table
Player_State <- str_extract(player_ratings$data, "\\w+")              # 1st word on the line
Pre_Rating <- as.integer(str_extract(str_extract(player_ratings$data, "[^\\d]\\d{3,4}[^\\d]"), "\\d+")) # 1st instance of a number of at least 3 but no more than 4 digits 
Post_Rating <- as.integer(str_extract(str_extract(player_ratings$data, "->\\s*\\d{3,4}"), "\\d+")) # 1st instance of a number of at least 3 but no more than 4 digits, which come after "-> ".


# Calculate the Arpad Elo's mean rating for each player's opponents
total_Players = nrow(players)

Avg_Opponent_Pre_Rating <- total_Players

for (i in 1:total_Players) { 
  # for each player
  Avg_Opponent_Pre_Rating[i] <- round(
    mean(
      Pre_Rating[as.numeric(
        flatten(
          Opponents[Pair_Num[i]]
        )
        )]
    ), digits = 0
  ) 
}


# build a table to be used as the source for the CSV file
DT = data.table(
  Player_Name,
  Player_State,
  Total_Points,
  Pre_Rating,
  Avg_Opponent_Pre_Rating
)


# Write the data to CSV file
write_csv(
  x = DT,
  file = "c:\\tmp\\chess_tournament_player_output.csv",
  quote_escape = "double"
)



  