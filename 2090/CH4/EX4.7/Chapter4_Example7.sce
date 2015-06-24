clc
clear
//Input data
f=0.03;//The residual fraction of an engine
e=1.2;//The equivalence ratio

//Calculations
F=0.0795;//Fuel/air ratio for corresponding equivalence ratio 
T=1+F;//Total mass in kg
fa=1-f;//Fresh air in kg
ff=F*(fa);//Fresh fuel in kg
ra=f;//Air in residual in kg
rf=ra*F;//Fuel in residual in kg

//Output
printf('Fresh air = %3.2f kg \n Fresh fuel = %3.6f kg \n Air in residual = %3.2f kg \n Fuel in residual = %3.6f kg ',fa,ff,ra,rf)
