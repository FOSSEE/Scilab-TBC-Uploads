clc
//initialisation of variables
clear
Ps1= 1050 //lbf/ft^2
fr= 10.7
p= 36.6 //lbf/ft^2
p1= 195 //lbf/ft^2
fr1= 16
fr2= 1.8
//CALCULATIONS
p2= fr*p
dp= Ps1-p2
lc= dp/p
sp= Ps1+p1-p*(fr1+fr2)
lc1= sp/p
//RESULTS
printf ('Pressure = %.f lbf/ft^2',p1)
printf ('\n pressure difference = %.f lbf/ft^2',dp)
printf ('\n Loss coefficient = %.f ',lc)
printf ('\n Loss coefficient = %.1f ',lc1)
