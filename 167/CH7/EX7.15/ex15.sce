//ques15
//Effect of Efficiency on Compressor Power Input
clear
clc
T1=285;//initial temperature in K
h1=285.14;//table A-17 initial heat of enthalpy in kJ/kg
Pr1=1.1584;//reduced pressure
P2=800;//final pressure in kPa
P1=100;//initial pressure in kPa
Pr2=Pr1*(P2/P1);
//from table corresponding to Pr2
h2s=517.05;//enthalpy of heat in kJ/kg
n=0.80;//efficiency
//using the formula for efficiency')
h2a=(h2s-h1)/n+h1;//enthalpy of heat in kJ/kg
T2a=569.5; //final temp in K from table
printf('(a) Temperature T2a = %.1f K \n',T2a);
ms=0.2;//mass flow rate in kg/s
w=ms*(h2a-h1);//work done in kJ/kg 
printf(' (b) Required power input to compressor as determined from the energy balance equation is = %.2f kJ/kg \n',w);
