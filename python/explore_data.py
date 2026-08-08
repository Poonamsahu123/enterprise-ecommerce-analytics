import pandas as pd

df = pd.read_csv("../dataset/Sample - Superstore.csv", encoding="latin1")

print(df.head())

# First 5 rows
print("========== FIRST 5 ROWS ==========")
print(df.head())

# Number of rows and columns
print("\n========== SHAPE ==========")
print(df.shape)

# Column names
print("\n========== COLUMNS ==========")
print(df.columns)

# Dataset information
print("\n========== INFO ==========")
print(df.info())

# Missing values
print("\n========== MISSING VALUES ==========")
print(df.isnull().sum())

# Statistical summary
print("\n========== SUMMARY ==========")
print(df.describe())
