//Example 1_19
clc;
clear;close;

//Given data
Vs=12;//V
P=0.3;//W
Rs=100;//ohm//as slope is -100V/A
//Vs=Vg+Ig*Rg leads to Rs*Ig^2-Vs*Ig+P=0
X=[Rs -Vs P];//polynomial
Ig=roots(X);//A
Ig=Ig(2);//A(taking one value)
disp(Rs,"Source resistance, Rs in ohm ");
disp(Ig*1000,"Trigger current in mA ");
Vg=P/Ig;//V
disp(Vg,"Voltage Vg in V ");
