//ques4
//Calculation of work in the given cycle
clear
clc
R=0.287;//gas constant 
T1=288.2;//compressor temperature K
T2=1373.2;//K turbine temperature K
//Pe/Pi=c=10, Pi/Pe=1/c from example 12.1
c=10;
wc=-R*T1*log(c);
printf('Isothermal work in compressor = %.1f kJ/kg \n',wc);
wt=-R*T2*log(1/c);
printf(' Isothermal work in turbine = %.1f kJ/kg\n',wt); 