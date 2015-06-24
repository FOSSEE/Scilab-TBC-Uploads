// Example 4.4, Page No-187
clear
clc

Vcc=15
Re2=1000
Vc1=5
Ve2=5
I=(Vcc-Ve2)/Re2
I=I*1000
printf("Current= %d mA", I)
