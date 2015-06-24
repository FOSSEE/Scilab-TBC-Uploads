// Example 11.8, Page No-478
clear
clc

n=16
lv=2^n
V=2
st=V/lv
lvn=st*10^6
printf('\nStep Size= %.2f uV', lvn)
dr=20*log10(lv)
printf('\nDynamic Range= %d dB', dr)
