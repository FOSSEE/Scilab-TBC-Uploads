//Exa 1.2
clc;
clear;
close;
//Given data : 
format('v',6);
VL=440;//in volt
IL=10;//in Ampere
//In star connected :
disp("In star connected :");
Iph=IL;//in Ampere
Vph=VL/sqrt(3);//in volt
Rph=Vph/Iph;//in ohm
disp(Rph,"Value of each resistor(in ohm) :");
//In delta connected :
disp("In delta connected :");
Iph=IL/sqrt(3);//in Ampere
Vph=Iph*Rph;//in volt
disp(Vph,"Voltage in delta connection(in volt) :");
disp("Voltage needed is 1/3rd, the voltage in star connection.")