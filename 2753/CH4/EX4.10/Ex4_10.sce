//Example 4.10: 
clc;
clear;
close;
//given data :
format('v',6)
Bv=12;//battery voltage in V
P=2;// power in Watt
Ic=(P/Bv)*10^3;
disp(Ic,"The maximum collector current,Ic(mA) = ")
