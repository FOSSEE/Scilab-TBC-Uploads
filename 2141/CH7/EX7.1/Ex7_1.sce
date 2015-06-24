
clc
//initialisation of variables
p2=150//lbf/in^2
v=20 //f
h1=79.385 //lbf/in^2
g=144//in^2/ft^3
T=778//F
p=35.736//lbf/in^2
s1=0.16719 //btu/lbm-R
T2=122.9 //F
h2=90.330 //lbf/in^2
v2=0.28270 //Btu/lbm
//CALCULATIONS
u1=h1-(p*g*1.0988/T)//Btu/lbmu
u2=h2-(p2*g*v2/T//Btu/lbm
W=u1-u2 //Btu/lbm
//RESULTS
printf('the work per pound =% f Btu/lbm',W)
