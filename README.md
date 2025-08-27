# Titanic Survival Prediction with Logistic Regression

## 📌 Project Overview  
This project predicts passenger survival on the **Titanic** using a **Logistic Regression** model.  
Dataset sourced from [Kaggle's Titanic: Machine Learning from Disaster](https://www.kaggle.com/c/titanic).  

The goal was to explore the dataset, engineer meaningful features, and build a predictive model to estimate survival probabilities.  

---

## ⚙️ Tools & Technologies  
- **Language**: R  
- **Libraries**: `tidyverse`, `caret`, `ggplot2`  

---

## 🔍 Process & Methodology  
1. **Data Preparation**  
   - Cleaned missing values and encoded categorical variables.  
   - Standardized numerical features.  
   - Split dataset into training & testing sets.  

2. **Exploratory Data Analysis (EDA)**  
   - Visualized survival rates across gender, passenger class, and age groups.  
   - Key findings:  
     - Women had significantly higher survival rates.  
     - Passengers in **1st class** had much higher chances of survival.  

3. **Model Building: Logistic Regression**  
   - Trained a logistic regression classifier.  
   - Interpreted coefficients to understand feature importance.  

4. **Model Evaluation**  
   - Used a confusion matrix and classification report.  
   - Computed **Accuracy, Precision, Recall, and F1 Score**.  

---

## 📊 Results  

| Metric       | Score |
|--------------|-------|
| **Accuracy** | 0.82  |
| **Precision** | 0.78 |
| **Recall**    | 0.75 |
| **F1 Score**  | 0.76 |

✅ The logistic regression model achieved **82% accuracy**, with balanced precision and recall.  

---

## 📌 Key Insights  
- **Gender (Sex)** and **Passenger Class (Pclass)** were the strongest predictors of survival.  
- Age also influenced survival, with **children having higher chances**.  
- Logistic Regression provided interpretable coefficients, showing the weight of each feature.  

---

## 📂 Dataset  
👉 [Titanic: Machine Learning from Disaster (Kaggle)](https://www.kaggle.com/c/titanic)  

---

## 🚀 Future Work  
- Compare Logistic Regression with **Random Forest, XGBoost, and Neural Networks**.  
- Perform advanced feature engineering (family size, ticket grouping).  
- Apply cross-validation and hyperparameter tuning for optimization.  

---

## 👨‍💻 Author  
**Bilal Ali** – Student & Data Enthusiast  
- 📍 Passionate about Data Science & AI  
- 🔗 [LinkedIn](#) | [GitHub](#)
