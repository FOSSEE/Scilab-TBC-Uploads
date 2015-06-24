// Example 11.10, Page No-494
clear
clc

n=8
cl=2*10^6
tp=1/cl
tpn=tp*10^6
printf('\n Time for one clock pulse= %.1f uS', tpn)
tm=(n+1)*tp
tmn=tm*10^6
printf('\n Time for resetting SAR and conversion= %.1f uS', tmn)
