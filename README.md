# Crowdfunding: Extract, Transform & Load

In this scenario, two Excel spreadsheets were read into a jupyter notebook.  The data from the first spreadsheet (crowdfunding.xlsx) was extracted and organized into Pandas DataFrames.  The information was parsed and transformed into individual category and subcategory dataframes from the original crowdfunding spreadsheet.   Category and subcategory IDs were appended to correspond to each column.

Crowdfunding campaign information was also transformed from the first extracted Excel spreadsheet.  A few columns were renamed and then this Campaign dataframe was merged with the Category and Subcategory dataframes.

A second Excel spreadsheet (contacts.xlsx) was read into a dataframe.  Each row and column in the dataframe was converted to a dictionary by iterating through the original contact info dataframe.  After creating the new dataframe, a couple of columns were split and another dropped in order give a cleaner appearance.

All four "new" dataframes were then exported to a .csv.

These four .csv's were observed in order to create an Entity Relationship Diagram.  This diagram helps to visualize the commonalities (primary and foreign keys) between the sets of data.

Lastly, the ERD was used as a guide to create a crowdfunding database that included tables relating to the .csv files.  The tables were created in PostgreSQL and then the .csv's were imported into the database.
