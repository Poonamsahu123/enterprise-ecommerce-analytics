import pandas as pd

# Read the dataset
df = pd.read_csv("../dataset/Sample - Superstore.csv", encoding="latin1")

# Convert date columns
df["Order Date"] = pd.to_datetime(df["Order Date"])
df["Ship Date"] = pd.to_datetime(df["Ship Date"])

# Remove duplicate rows
df = df.drop_duplicates()

# Create new columns
df["Year"] = df["Order Date"].dt.year
df["Month"] = df["Order Date"].dt.month_name()
df["Quarter"] = df["Order Date"].dt.quarter

# Calculate shipping time
df["Shipping Days"] = (df["Ship Date"] - df["Order Date"]).dt.days

# Calculate Profit Margin
df["Profit Margin"] = (df["Profit"] / df["Sales"]) * 100

# Save cleaned dataset
df.to_csv("../dataset/cleaned_superstore.csv", index=False)


print(df.head())
print("\nTotal Rows:", len(df))
print("Total Columns:", len(df.columns))
print(" Data cleaned successfully!")

df.to_csv("../dataset/cleaned_superstore.csv", index=False)
