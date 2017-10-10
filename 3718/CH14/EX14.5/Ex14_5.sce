//Chapter 14: Water Treatment
//Problem: 5
clc;

//Initialisation of Variables
wt1 = 32.4    //in mg/L for Ca(HCO3)2
wt2 = 29.29   //in mg/L for Mg(HCO3)2
wt3 = 13.5    //in mg/L for CaSO4

//Solution
wt1_eq = wt1 * 100 / 162.
wt2_eq = wt2 * 100 / 146.
wt3_eq = wt3 * 100 / 136.

temp_h = wt1_eq + wt2_eq //where temp_h is temporary hardness
perm_h = wt3_eq //where perm_h is permanent hardness

mprintf("Temporary hardness {caused by Ca(HCO3)2 & Mg(HCO3)2} is:%d ppm\n",temp_h)
mprintf(" Permanent hardness {caused by CaSO4} is:%.1f ppm",perm_h)
