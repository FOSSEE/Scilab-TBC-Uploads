clc
//initialisation of variables
clear
rt= 0.5 //ft
rr= 0.16 //ft
dv1= 88.3 //ft/sec
b= 150 //degrees
a= 5 //degrees
v1= [-0.933 -0.311]
i= [1.0 5.0 6.7]
//CALCULATIONS
b1= b+a
A= %pi*(rt^2-rr^2)
Va= -dv1*tand(b1)
Q= Va*A
a1= atand(v1)+180

//RESULTS
printf ('Velocity = %.2f ft/sec',Va)
printf ('\n Flow rate = %.1f ft^3/sec',Q)

disp(v1)
disp(a1)
disp(i)
