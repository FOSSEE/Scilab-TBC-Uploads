clc
clear
//Input data
Cp=0.23;//Specific heat of air at constant pressure 
J=4.2*10^7;//The amount of energy in ergs/cal
d=1.293;//The density of air at N.T.P in g/litre 
p=76;//The pressure in cm of Hg 
T=273;//The temperature in K 

//Calculations 
P=p*13.6*980;//The pressure in dynes/cm^2 
V=(1000/d);//Volume of one gram of air at N.T.P in cm^3 
r=(P*V)/T;//The gas constant for one gram of a gas in ergs/g-K 
Cv=Cp-(r/J);//Specific heat of air at constant volume 

//Output
printf('The specific heat of air at constant volume is Cv = %3.4f ',Cv)
