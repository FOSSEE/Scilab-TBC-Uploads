clc
clear
//Page number 470
//Input data 
a=0.245;//Van der Waals constant in atoms-litre^2-mole^-2
b=2.67*10^-2;//Van der Waals constant in litre-mole^-1
R=8.314*10^7;//Universal gas constant in ergs/mole-K 

//Calculations 
a1=a*76*13.6*980*10^6;//Van der Waals constant in dynes-cm^4-mole^-2 
b1=b*10^3;//Van der Waals constant in cm^3mole^-1
Tc=(8/27)*(a1/b1)*(1/R);//The critical temperature in K 
Tc1=Tc-273;//The critical temperature in degree centigrade 

//Output
printf('The critical temperature is Tc = %3.2f K  (or) %3.2f degree centigrade ',Tc,Tc1)
