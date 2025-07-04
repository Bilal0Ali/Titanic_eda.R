# 🛳️ Titanic EDA Project in R

This is a beginner-friendly Exploratory Data Analysis (EDA) project using R, based on the classic **Titanic dataset**.

The goal was to understand survival patterns on the Titanic based on **class, sex, and age** using basic R functions and visualizations.

---

## 📦 Dataset

Used the built-in `Titanic` dataset in R — a pre-aggregated table of:

- **Class** (1st, 2nd, 3rd, Crew)  
- **Sex** (Male/Female)  
- **Age** (Child/Adult)  
- **Survived** (Yes/No)  
- **Freq** (How many passengers fit that profile)

The dataset has **32 observations**, each representing a group of passengers.

---

## 🧠 What I Did

- Converted the table to a `data.frame`
- Performed group-wise summarizations using `dplyr`
- Visualized survival patterns using `ggplot2`
- Exported a clean `.csv` of the processed data

---

## 📊 Key Insights

- **Females** had a much higher survival rate than males
- **1st Class** passengers survived significantly more than 3rd Class
- **Children** had better survival odds than adults, especially among females
- The survival rate varied **heavily by both class and gender**

---

## 🛠️ Tools Used

- `R`, `Posit Cloud`
- `dplyr` for data wrangling
- `ggplot2` for visualizations
- `tidyr` for reshaping (pivoting)
- Exported final results as `titanic_summary.csv`

---

## 🧾 Files

- `titanic_eda.R` → The main script file
- `titanic_summary.csv` → Final output dataset
- `survival_by_class_gender.png` → Bar plot of survival proportions
- `child_vs_adult_survival.png` → Proportional survival by age group

---

## 🎯 Next Steps

- Reproduce this on the **Kaggle Titanic dataset** for more in-depth analysis
- Try building an interactive **Shiny app** to visualize filters
- Add a simple logistic regression model

---

## 📬 Contact

Project by **Bilal**  
Feel free to connect on [Instagram](https://instagram.com/itsali.bilal) or [X](https://x.com/itsali_bilal)

---

> This was my first full R project — small but solid. More coming soon 🚀
