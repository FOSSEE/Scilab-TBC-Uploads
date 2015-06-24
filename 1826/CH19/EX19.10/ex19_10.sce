// Example 19.10, page no-548
clear
clc

d=8900//kg/m^3
wt=58.71
avg=6.022*10^26
bet=9.27*10^-24
mu=4*%pi*10^-7
mm=0.6*bet
N=d*avg/wt
ms=mm*N
bs=mu*ms
printf("\nThe saturation magnetisation is %.3f *10^5 A/m\nThe saturation flux density is %.3f Wb/m^2",ms*10^-5,bs)
