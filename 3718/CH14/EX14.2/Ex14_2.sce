//Chapter 14: Water Treatment
//Problem: 2
clc;

//Declaration of Variables
wt1 = 9.3 //in mg/L
wt2 = 17.4 //in mg/L
wt3 = 8.7 //in mg/L
wt4 = 12.6 //in mg/L

//Solution
temp_h = wt1 * 100 / 146 + wt2 * 100 / 162         //where temp_h is temporary hardness
perm_h = wt3 * 100 / 95 + wt4 * 100 / 136         //where perm_h is permanent hardness
total_h = temp_h + perm_h                         //where total_h is total hardness

mprintf("Temporary hardness: %.2f mg/L\n",temp_h)
mprintf(" Total hardness: %.2f mg/L",total_h)
