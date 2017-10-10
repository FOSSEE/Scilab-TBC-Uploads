//Example 9_2
clc();
clear;
//To calculate the cross sectional area and how far the ball will stretch the wire
m=40   //units in Kg
g=9.8   //units in meter/sec^2
F=m*g   //units in Kg meter/sec^2
stress=0.48*10^8   //units in Newton/meter^2
A=F/stress   //units in meter^2
r=sqrt(A/%pi)*10^3   //units in mm
printf("The radius of the wire should be r=%.1f mm and the cross sectional area is A=",r)
disp(A)
printf("meter^2")
y=200*10^9    //units in Newton/meter^2
strain=stress/y
L0=15   //units in meters
deltaL=strain*L0   //units in meters
deltaL=deltaL*10^3    //units in mm
printf("\nThe ball stretches the wire a distance of deltaL=%.2f mm",deltaL) 
