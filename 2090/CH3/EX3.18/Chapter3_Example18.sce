clc
clear
//Input data
T1=3000;//Given temperature in K
T2=4000;//Given temperature in K
p=1;//The pressure in atm
KP1=1.117;//Natural logarithm of equilibrium constant at 3000 K 
KP2=-1.593;//Natural logarithm of equilibrium constant at 4000 K

//Calculations
Kp1=exp(KP1);//The value of equilibrium constant at 3000 K
Kp2=exp(KP2);//The value of equilibrium constant at 4000 K
a1=0.4;//The dissociation of 1 mole of CO2 for the first trail
a2=0.5;//The dissociation of 1 mole of CO2 for the second trail 
K1=3.674;//The value of equilibrium constant for the first trail 
K2=2.236;//The value of equilibrium constant for the second trail
a12=[[(K1-Kp1)/(K1-K2)]*(a2-a1)]+a1;//The approximate dissociation of 1 mole of CO2
A12=a12*100;//The amount of CO2 will dissociate in percent
a3=0.9;//The dissociation of 1 mole of CO2 for the first trail
a4=0.89;//The dissociation of 1 mole of CO2 for the second trail
K3=0.1995;//The value of equilibrium constant for the first trail 
K4=0.2227;//The value of equilibrium constant for the second trail 
a23=[[(Kp2-K4)/(K3-K4)]*(a3-a4)]+a4;//The approximate dissociation of 1 mole of CO2
A23=a23*100;//The amount of CO2 will dissociate in percent

//output
printf('The percent dissociation of carbondioxide into carbonmonoxide and oxygen at \n    (a) at 3000 K and 1 atm pressure = %3.1f percent \n    (b) at 4000 K and 1 atm pressure = %3.2f percent ',A12,A23)
