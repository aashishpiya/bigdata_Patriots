#!/usr/bin/env python
# coding: utf-8

# In[112]:


data = "/home/ap/Documents/bigdata/bigdata_Patriots/execute/Shakespeare.txt"


# In[113]:


import re
import time


# In[114]:


# #takes care of /n at the end of each line
# with open(data) as f:
#     lines = [line.rstrip() for line in f]


# In[115]:



#takes care of /n at the end of each line
with open(data) as f:
    lines = [line.rstrip().lower() for line in f]
    


# In[116]:


#lines


# In[117]:


words = [line.split() for line in lines]


# In[118]:


#words


# In[119]:


flat_list = [item for sublist in words for item in sublist]


# In[120]:


#flat_list


# ## Remove punctuations and special characters

# In[121]:



clean_words = [re.sub('[^A-Za-z0-9]+', '', word) for  word in flat_list]    


# In[122]:


#clean_words


# 

# In[123]:


## check unique words 

unique_words = set(clean_words)
#unique_words


# In[104]:





# In[ ]:





# In[ ]:


#clean_words


# ## create a dictionary of unique words and their count in the cleaned word list
# 

# In[124]:



wordfreq = {}

for word in clean_words:
    wordfreq[word] = wordfreq.setdefault(word, 0) + 1
    


# ## dictionary of word and frequency count
# 

# In[125]:


#wordfreq


# ## output the dictionary to csv file
# 

# In[110]:



import csv
with open('/home/ap/Documents/bigdata/bigdata_Patriots/execute/shakes.csv', 'w', newline="") as csv_file:  
    writer = csv.writer(csv_file)
    for key, value in wordfreq.items():
       writer.writerow([key, value])


# In[ ]:





# In[ ]:




