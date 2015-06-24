clc
//initialisation of variables
clear
rt= 0.5 //ft
rr= 0.16 //ft
dv1= 88.3 //ft/sec
b= 150 //degrees
r= [0.16 0.3 0.5]
vw= [2.5 5 7.5]
vb= [46.6 88.3 132.5]
vrb= [44.16 88.3 132.5]
v1= [-1.154 -0.385]
//CALCULATIONS
A= %pi*(rt^2-rr^2)
Va= -dv1*tand(b)
Q= Va*A
a= atand(v1)+180
i= b-a
//RESULTS
printf ('Velocity = %.2f ft/sec',Va)
printf ('\n Flow rate = %.1f ft^3',Q)
disp(v1)
disp(a)
disp(i)
