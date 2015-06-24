//Example 3.4.1 // shunt resistor
clc;
clear;
close;
im=3;//in mA
rm=100;//in ohms
i=150;//in mA
rsh=(im*10^-3*rm)/((i-im)*10^-3);//shunt resistance in ohms
disp(rsh,"shunt resistance in ohms is")
