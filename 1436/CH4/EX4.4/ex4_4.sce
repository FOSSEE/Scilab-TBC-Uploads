// Example 4.4, page no-210
clear
clc
rg1=1200
rg2=1200
rg3=1200
rg4=1200
D1=rg1*5/100
D2=rg2*5/100
D3=rg3*5/100
D4=rg4*5/100
E=12
v=E*(((rg1+D1)/(rg1+D1+rg2-D2))-((rg4-D4)/(rg3+D3+rg4-D4)))
v=v*1000
printf("V0=%d mV",v)
