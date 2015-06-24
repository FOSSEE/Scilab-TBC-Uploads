clc
clear
//Input data
p=700;//pressure of fluid in kN/m^2
v1=0.28;//Initial volume of fluid in m^3
v2=1.68;//Final volume of fluid in m^3

//Calculations
W=p*(v2-v1);//Work done in kJ

//Output
printf('The Work done W= %3.2f kJ',W)
