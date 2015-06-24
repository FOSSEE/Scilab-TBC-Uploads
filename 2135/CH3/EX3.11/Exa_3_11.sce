//Exa 3.11
clc;
clear;
close;
format('v',7);

//Given Data :
T1=727+273;//K
T2=27+273;//K
Wdot=76;//KW
FuelBurned=4;//Kg/hr
FuelBurned=4/3600;//Kg/sec
FuelHeatingValue=75000;//KJ/Kg
Q1dot=FuelBurned*FuelHeatingValue;//KJ/s or KW
Eta=Wdot/Q1dot*100;//%
disp(Eta,"Actual Efficiency of Engine in % : ");
Eta_c=(1-T2/T1)*100;//%
disp(Eta_c,"Carnot Efficiency of Engine in % : ");
disp("Claim of inventor is wrong as actual efficiency is greater than carnot efficiency.");
