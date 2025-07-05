# ----------------------------------------
# 🛳️ Titanic EDA in R - Beginner Project
# Dataset: Built-in 'Titanic' table in R
# Author: Bilal
# ----------------------------------------

# Load built-in Titanic dataset
data("Titanic")

# Convert table to data frame
df <- as.data.frame(Titanic)

# View first few rows
head(df)

# Check structure
str(df)

# Summary statistics
summary(df)

# -------------------------------
#  Total number of passengers
# -------------------------------
sum(df$freq)  # 2201 total passengers

# -------------------------------
#  Overall survival breakdown
# -------------------------------
library(dplyr)

df %>%
  group_by(survived) %>%
  summarise(total = sum(freq)) %>%
  mutate(percent = round(100 * total / sum(total), 1))

# -------------------------------
#  Survival by gender
# -------------------------------
df %>%
  group_by(sex, survived) %>%
  summarise(count = sum(freq)) %>%
  mutate(percent = round(100 * count / sum(count), 1))

# -------------------------------
#  Survival by class
# -------------------------------
df %>%
  group_by(class, survived) %>%
  summarise(count = sum(freq)) %>%
  mutate(percent = round(100 * count / sum(count), 1))

# -------------------------------
#  Barplot: Survival by class & gender
# -------------------------------
library(ggplot2)

ggplot(df, aes(x = class, y = freq, fill = survived)) +
  geom_bar(stat = "identity", position = "fill") +
  facet_wrap(~sex) +
  labs(
    title = "Survival Rate by Class and Gender",
    y = "Proportion", x = "Passenger Class"
  ) +
  scale_y_continuous(labels = scales::percent)

# Save the plot (optional)
ggsave("survival_by_class_gender.png")

# -------------------------------
# Adult vs Child Survival
# -------------------------------
df %>%
  group_by(age, survived) %>%
  summarise(count = sum(freq)) %>%
  mutate(percent = round(100 * count / sum(count), 1))

# Plot survival rate: child vs adult
ggplot(df, aes(x = age, y = freq, fill = survived)) +
  geom_bar(stat = "identity", position = "fill") +
  labs(title = "Survival Rate: Children vs Adults", y = "Proportion") +
  scale_y_continuous(labels = scales::percent)

# -------------------------------
#  Save cleaned dataset
# -------------------------------
write.csv(df, "titanic_summary.csv", row.names = FALSE)
