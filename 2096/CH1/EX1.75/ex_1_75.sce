//Example 1.74// kWh & percentage error
clc;
clear;
I= (40*225)/600;//current in amperes
I1=14;//current in ampere
V=230;//volts
pf=1;//power factor
n=225;//no. of revolutions
t=360;//total time in seconds
E=((V*I*pf*10)/(60*1000));//energy recorded in  1 hour in kWh
Er=((V*I1*pf*10)/(60*1000));//energy consumed in  1 hour in kWh;//energy recorded by the meter
Per=((Er-E)/E)*100;//percentage error
disp(-Per,"percentage error is")

