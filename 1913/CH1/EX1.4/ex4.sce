clc
clear
//Input data
v1=0.056;//Initial volume of gas in m^3
v2=0.007;//Final volume of gas in m^3
p1=100;//Initial perssure compressed Isothermally in kN/m^2

//Calculations
p2=(p1*v1)/v2;//Final pressure in kN/m^2
W=p1*v1*(log(v2/v1));//Work done in kJ

//Output
printf('(a)Final pressure p2= %3.2f kN/m^2 \n (b)The work done on gas W= %3.2f kJ',p2,W)
