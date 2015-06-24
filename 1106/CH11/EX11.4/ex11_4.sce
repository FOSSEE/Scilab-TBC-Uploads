// Example 11.4, Page No-461
clear
clc

reso=10
//Part A
k1=bin2dec('10001010')
Vo=k1*reso
Von=Vo/1000
printf('\nVo= %.2f V', Von)

//Part B
k2=bin2dec('000100000')
Vo1=k2*reso
Von1=Vo1/1000
printf('\nVo= %.2f V', Von1)

