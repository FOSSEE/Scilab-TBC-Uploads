//calculating percentage C and H
//Example 2.6
clc
clear
wt1=2.75//increase in wt of KOH tube in gm
wt2=0.45//increase in wt of CaCl2 tube in gm
wt=1//weight of coal sample in gm
%c=(wt1*12*100)/(wt*44)//percentage of carbon
%h=(wt2*2*100)/(wt*18)//percentage of hydrogen
printf('Thus (i)Percentage of carbon = %2.0f percent',%c)
printf('\n(ii)Percentage of hydrogen =%2.0f percent',%h)
