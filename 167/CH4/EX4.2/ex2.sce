//ques2
//Boundary Work for a Constant Pressure Process
clear
clc
m=10//mass in lbm
P=60//pressure in psia
//from table A-6 E
v2=8.3548//specific volume at state 1 in Kg/m^3
v1=7.4863//specific volume at state 2 in Kg/m^3
w=integrate('m*P','v',v1,v2)/5.404; //divided by 5.404 to convert it into Btu
printf('Work done by steam = %.2f Btu',w);
