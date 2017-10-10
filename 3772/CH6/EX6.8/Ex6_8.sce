// Problem no 6.8,Page No.159

clc;clear;
close;

L=6 //m //Length of beam
d=0.15 //m //diameter
y_max=1.035*10**-2 //m //Deflection
E=210*10**9 

//Calculations

I=%pi*64**-1*d**4 //M.I of Beam
W=y_max*48*E*(L**3)**-1 //Point Load
theta_A=3*y_max*L**-1
theta_B=-theta_A

//Result
printf("The Heaviest central Point Load placed is %.2f N",W)
printf("\n Slope at supports are:theta_A = %.5f radian",theta_A)
printf("\n                      :theta_B = %.5f radian",theta_B)
