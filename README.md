# SQL+Python : Global GDP Data Analysis

## Project Overview


This project offers a complete data analysis solution focused on extracting valuable business insights from Global GDP data. It leverages Python for data processing and analysis, SQL for complex querying, and structured problem-solving methods to address important business challenges. This project is ideal for data analysts aiming to enhance their skills in data manipulation, SQL querying, and data pipeline development.

---
## Getting Started

1. Clone the repository:
   ```bash
   git clone <repo-url>
   ```
2. Install Python libraries:
   ```bash
   pip install -r requirements.txt
   ```
3. Set up your Kaggle API, download the data, and follow the steps to load and analyze.

---

## Project Structure

```plaintext
|-- data/                     # Raw data and transformed data
|-- sql_queries/              # SQL scripts for analysis and queries
|-- notebooks/                # Jupyter notebooks for Python analysis
|-- README.md                 # Project documentation
|-- requirements.txt          # List of required Python libraries
```
---


## Project Steps

### 1. Set Up the Environment
   - **Tools Used**: Visual Studio Code (VS Code), Python, MySQL
   - **Goal**: Create a structured workspace within VS Code and organize project folders for smooth development and data handling.

### 2. Set Up Kaggle API
   - **API Setup**: Obtain your Kaggle API token from [Kaggle](https://www.kaggle.com/) by navigating to your profile settings and downloading the JSON file.
   - **Configure Kaggle**: 
      - Place the downloaded `kaggle.json` file in your local `.kaggle` folder.
      - Use the command `kaggle datasets download -d <dataset-path>` to pull datasets directly into your project.

### 3. Download Walmart Sales Data
   - **Data Source**: Use the Kaggle API to download the GDP global datasets from Kaggle.
   - **Dataset Link**: [GDP Dataset](https://www.kaggle.com/datasets/muneebqureshi3131/gdp-by-country)
   - **Storage**: Save the data in the `data/` folder for easy reference and access.

### 4. Install Required Libraries and Load Data
   - **Libraries**: Install necessary Python libraries using:
     ```bash
     pip install pandas numpy pymysql sqlalchemy 
     ```
   - **Loading Data**: Read the data into a Pandas DataFrame for initial analysis and transformations.

### 5. Explore the Data
   - **Goal**: Conduct an initial data exploration to understand data distribution, check column names, types, and identify potential issues.
   - **Analysis**: Use functions like `.info()`, `.describe()`, and `.head()` to get a quick overview of the data structure and statistics.

### 6. Data Cleaning
   - **Remove Duplicates**: Identify and remove duplicate entries to avoid skewed results.
   - **Handle Missing Values**: Drop rows or columns with missing values as they are insignificant.
   - **Currency Formatting**: Use `.replace()` to handle and format currency values for analysis.
   - **Validation**: Check for any remaining inconsistencies and verify the cleaned data

### 7. Feature Engineering
   - **Create New Columns**: Clean and preprocess the dataset by removing unwanted characters such as `$` and `,` from the `GDP(nominal,2022)` and `population` columns, then convert these fields into numeric values. Rename columns to make them more intuitive (e.g., `GDP(nominal,2022)` to `gdp_nominal_2022`).
   - **Enhance Dataset**: This transformation facilitates efficient analysis by enabling numerical operations on `GDP_growth_percentage` and `worldGDP_share_percentage`, which are also cleaned by removing `%` signs and converting them into float values. These improvements streamline further aggregation and analysis tasks in SQL or other analytical processes.

### 8. Load Data into MySQL
   - **Set Up Connections**: Connect to MySQL using `sqlalchemy` and load the cleaned data into database.
   - **Table Creation**: Set up tables in MySQL using Python SQLAlchemy to automate table creation and data insertion.
   - **Verification**: Run initial SQL queries to confirm that the data has been loaded accurately.

### 9. SQL Analysis: Complex Queries and Business Problem Solving
   - **Business Problem-Solving**: Develop and execute complex SQL queries to address key business challenges, such as:
     - Identifying countries with negative GDP growth.
     - Listing countries with a population higher than the world average and their corresponding GDP stats.
     - Highlighting countries contributing over 3% to the world GDP.
     - Ranking countries based on population growth impact and GDP share.
   - **Documentation**: Maintain detailed notes for each query, outlining its goal, methodology, and the results obtained, ensuring clarity for future reference and collaboration.

### 10. Project Publishing and Documentation
   - **Documentation**: Maintain well-structured documentation of the entire process in Markdown or a Jupyter Notebook.
   - **Project Publishing**: Publish the completed project on GitHub or any other version control platform, including:
     - The `README.md` file (this document).
     - Jupyter Notebooks (if applicable).
     - SQL query scripts.
     - Data files (if possible) or steps to access them.

---

## Requirements

- **Python 3.8+**
- **SQL Databases**: MySQL
- **Python Libraries**:
  - `pandas`, `numpy`, `sqlalchemy`, `pymysql`
- **Kaggle API Key** (for data downloading)


## Results and Insights

This section summarizes the key findings from the SQL analysis:

- **Insights**: 
  - Identified countries with negative GDP growth, helping understand economic challenges.
  - Analyzed countries contributing more than 3% to the world GDP, highlighting major economic players.
  - Ranked countries by GDP per capita, shedding light on the top-performing economies.
  - Revealed countries with GDP above $3 trillion, offering insights into the wealthiest economies.
  - Investigated the relationship between population size and GDP growth, identifying nations where population growth correlates with economic performance.


## Future Enhancements

Possible extensions to this project:
- Integration with a dashboard tool (e.g., Power BI or Tableau) for interactive visualization.
- Additional data sources to enhance analysis depth.
- Automation of the data pipeline for real-time data ingestion and analysis.

---

## License

This project is licensed under the MIT License. 

---

## Acknowledgments

- **Data Source**: Kaggle’s GDP global 2022 Dataset
- **Inspiration**: Global GDP data case studies on Kaggle

---
