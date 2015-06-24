//Initilization of variables
Wa=161 //lb
Wb=193.2 //lb
Wc=300 //lb
ka=3 //ft
kb=2.5 //ft
theta1=30 //degrees
theta2=45 //degrees
g=32.2 //ft/s^2
//Calculations
//Moment of inertia Calculations
Ia=(Wa/g)*ka^2 //lb-s^2-ft
Ib=(Wb/g)*kb^2 //lb-s^2-ft
//Using equations of motion for A and B and C
//Solving by matrix method
A=[1,1,-Wa/g,0,0;1,-4,-Ia*(1/4),0,0;-2,0,-Ib*(5/8),4,0;0,0,-(Wc/g)*(5/2),-1,-0.25;0,0,0,0,1]
B=[Wa*sind(theta1);0;0;-Wc*cosd(theta2);Wc*sind(theta2)]
C=inv(A)*B
//Storing values in the variables
T1=C(1) //lb
T2=C(4) //lb
a=C(3) //ft/s^2
//Result
clc
printf('The value of a is %f ft/s^2 and T1=%f lb and that of T2 is %f lb',a,T1,T2)

