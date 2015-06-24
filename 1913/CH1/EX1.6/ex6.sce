clc
clear
//Input data
v1=0.2;//Initial volume in m^3
v2=0.5;//Final volume in m^3

//Calculations
W=1500*(((v2^2-v1^2)/200)+(v2-v1))/1000;//Work done in kJ

//Output
printf('The work done by the gas W= %3.4f kJ ',W)
