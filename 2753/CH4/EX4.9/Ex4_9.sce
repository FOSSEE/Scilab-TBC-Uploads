//Example 4.9: 
clc;
clear;
close;
//given data :
Bv=12;//battery voltage in V
Cl=6;//collector load in k-ohm
CC=Bv/Cl;
format('v',4)
disp(CC,"Collector current,(mA) = ")
