#!/usr/bin/env python
# coding: utf-8

# ## Problem Statement:
# 
# 1. Create a single .xlsx file with 10 sheets inside filled with dummy data.
# 2. Read the .xlsx file using pandas
# 3. Export every single sheet of the .xlsx file as a .csv file. (The Output should produce 10 .csv files that contains values of each sheet of .xlsx file respectively)

# In[1]:


# Importing libraries

import numpy as np
import pandas as pd


# In[3]:


dummy_d = {'name':['Alice','Bella','Sara','Emily'],
     'number':[18,20,22,24],
     'score':[85,87,83,89]}

dummy_d


# In[4]:


dummy_data =pd.DataFrame(dummy_d)
dummy_data


# In[10]:


# Creating the .xlsx file with 10 sheets

data = dummy_data.copy()
with pd.ExcelWriter('input_file.xlsx') as writer:  
    dummy_data.to_excel(writer, sheet_name='Sheet_1', index=False)
    dummy_data.to_excel(writer, sheet_name='Sheet_2', index=False)
    dummy_data.to_excel(writer, sheet_name='Sheet_3', index=False)
    dummy_data.to_excel(writer, sheet_name='Sheet_4', index=False)
    dummy_data.to_excel(writer, sheet_name='Sheet_5', index=False)
    dummy_data.to_excel(writer, sheet_name='Sheet_6', index=False)
    dummy_data.to_excel(writer, sheet_name='Sheet_7', index=False)
    dummy_data.to_excel(writer, sheet_name='Sheet_8', index=False)
    dummy_data.to_excel(writer, sheet_name='Sheet_9', index=False)
    dummy_data.to_excel(writer, sheet_name='Sheet_10', index=False)
    
   


# In[19]:


# Exporting the 10 .csv files

sheet1 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_1')
sheet1.to_csv('sheet1.csv',index=False)

sheet2 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_2')
sheet2.to_csv('sheet2.csv',index=False)

sheet3 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_3')
sheet3.to_csv('sheet3.csv',index=False)

sheet4 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_4')
sheet4.to_csv('sheet4.csv',index=False)

sheet5 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_5')
sheet5.to_csv('sheet5.csv',index=False)

sheet6 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_6')
sheet6.to_csv('sheet6.csv',index=False)

sheet7 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_7')
sheet7.to_csv('sheet7.csv',index=False)

sheet8 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_8')
sheet8.to_csv('sheet8.csv',index=False)

sheet9 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_9')
sheet9.to_csv('sheet9.csv',index=False)

sheet10 = pd.read_excel('input_file.xlsx',sheet_name='Sheet_10')
sheet10.to_csv('sheet10.csv',index=False)

