// Example 12.7, page no-353
clear
clc

lo=11.6 //m
delx=5.4*10^-3//m
alfL=12*10^-6//per K
delT=delx/(lo*alfL)
printf("The maximum temperature cange can withstand without any thermal stress is %.2f K",delT)
