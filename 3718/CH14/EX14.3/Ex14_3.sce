//Chapter 14: Water Treatment
//Problem: 3
clc;

//Initialisation of Variables
wt1 = 32.4    //in mg/L
wt2 = 29.2    //in mg/L
wt3 = 13.5    //in mg/L

//Solution
temp_h = wt1 * 100 / 162. + wt2 * 100 / 146. //where temp_h is temporary hardness
perm_h = wt3 * 100 / 136. //where perm_h is permanent hardness

mprintf("Temporary hardness: %.2f mg/L\n",temp_h)
mprintf(" Total hardness: %.2f mg/L",perm_h)

