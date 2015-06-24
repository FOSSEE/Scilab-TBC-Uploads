//Initilization of variables
theta1=50.5 //degree //is the angle made between BC & and BE
theta2=36.87 //degree //is te angle ade between BA &BE 
g=9.81 //m/s^2
Wa=15*g //N
Wb=40*g //N
Wc=20*g //N
//Calculations
R2=Wc/(sind(theta1)) //N //from F.B.D of cylinder C(sum Fy=0)
R4=(Wb+R2*sind(theta1))/sind(theta2) //N //from F.B.D of cylinder B(sum Fy=0)
R6=R4*cosd(theta2) //N //from F.B.D of cylinder A(sum Fx=0)
//Results
clc
printf('The reaction between the cylinder A and the wall of the channel is %f N \n',R6)
