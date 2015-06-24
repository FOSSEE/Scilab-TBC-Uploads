clc
clear
//Input data
w=4;//The Molecular weight of helium 
v=22400;//The volume of one gram molecule of a gas at N.T.P in cm^3
p=76;//The pressure in cm of Hg 
T=273;//The temperature in K 
J=4.2*10^7;//The amount of energy in ergs/cal

//Calculations 
V=(v/w);//The volume of one gram of helium at N.T.P in cm^3 
P=p*13.6*980;//The pressure in dynes/cm^2 
r=(P*V)/T;//The gas constant for one gram of a gas in ergs/g-K 
C=r/J;//The difference in the two specific heats of one gram of helium 

//Output
printf('The difference in the two specific heats of one gram of helium is Cp-Cv = %3.4f',C)
