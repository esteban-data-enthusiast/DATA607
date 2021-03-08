library(tidyverse)


# (1) Create a .CSV file (or optionally, a MySQL database!) that includes all of the information above. You’re encouraged to use a “wide” structure similar to how the information appears above, so that you can practice tidying and transformations as described below.


# (2) Read and tidy up the data

### 2.1 Read the information from your .CSV file into R, 
src_file_path <- "C:\\tmp\\Airline_Arrival_Delays.csv"
untidy_flights <- read_csv(src_file_path)

### 2.2 Take a peak at the data
head(untidy_flights)

### 2.3 Use tidyr and dplyr as needed to tidy and transform your data.
flights <- untidy_flights %>% 
  # remove blank lines
  drop_na() %>%
  # change format from wide to long to tidy up data
  pivot_longer(`Los Angeles`:`Seattle`, names_to = "destination", values_to = "count") %>%
    # rename column names
  rename(airline = Airline, flight_status = `Flight Status`)

head(flights,20)

### (3) Perform analysis to compare the arrival delays for the two airlines.

# List of delayed flight counts
delayed_flights <- flights %>%
  filter(flight_status == "delayed")

## which airline has the most overall delays and which one the least?
by_airline <- delayed_flights %>%
  group_by(airline) %>%
  summarise(total_count = sum(count)) %>%
  arrange(desc(total_count))

ggplot(by_airline, aes(x = airline, y = total_count, fill = airline)) +
  geom_bar(stat = "identity", position = "dodge") +
  coord_flip() +
  ggtitle("Total Overall Flight Delays Per Airline")


# which airport destination had the most delays?
by_destination <- delayed_flights %>%
  group_by(destination, airline) %>%
  #group_by(destination) %>%
   summarise(total_count = sum(count)) %>%
   arrange(desc(total_count))

ggplot(by_destination, aes(x = reorder(destination, total_count), y = total_count, fill = airline)) +
  geom_bar(stat = "identity", position = "dodge") +
  coord_flip() +
  ggtitle("Total Flight Delays Per Destination Per Airline") +
  labs(x = "Airport Destinations", y = "Total Delays")
  

by_destination
delayed_flights

  