//Example 5_38
clc;
clear;
close;
format('v',7);
//given data : 
Vd=12;//V
TC1=-1.7;//mV/degree C(Temperatre Coefficient of Si diode)
//For series combination to have TC=0
TC2=-TC1;//mV/degree C(Temperatre Coefficient of Avalanche diode)
//In percentage
TC2=TC2*10^-3/Vd*100;//%/degree C
disp(TC2,"Required temperature coefficient(%/degree C) : ");
