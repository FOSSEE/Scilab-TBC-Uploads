//Ex10_6 Pg-519
clc

R1=50*10^(3) //resistor R1 in ohm
Rf=300*10^(3) //feedback resistor in ohm
Vin=1 //input voltage in V

disp("In the inverting mode,voltage gain is ")
disp("A'' = Vo/Vi = (-1)*Rf/R1*(1+1/A*(1+Rf/R1))^-1 ")
A=10000 
Vo=(-1)*Vin*(Rf/R1)/(1+1/A*(1+Rf/R1)) //output voltage
printf(" \n Amplified output voltage = %.3f V \n",Vo)
