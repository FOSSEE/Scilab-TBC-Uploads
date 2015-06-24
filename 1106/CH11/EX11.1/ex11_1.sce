// Example 11.1, Page No-460
clear
clc

n=12
lv=2^n
Vo=4
st=10^6*Vo/lv
printf('\nStep Size= %d uV', st)

dr=Vo/(st*10^-6)
printf('\nDynamic Range= %d', dr)
drdb=20*log10(dr)
printf('\nDynamic Range= %d dB', drdb)
