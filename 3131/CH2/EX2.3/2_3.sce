clear all;clc;
disp("Ex 2_3")
//Refer figure 2-12a
F=500//Magnitude of force in N
F_AC=400//Magnitude of force directed from A to C in N
//Refer figure 2-12b, using parallelogram law
a1=60//angle in degrees
a=a1*%pi/180//angle in radian
p=(F_AC/F)*sin(a)
printf('\nsin(phi) = %.4f',p)
phi1=asin(p)//angle in radian
phi=phi1*180/%pi
printf('\nPhi = %.1f degrees',phi)
theta=180-a1-phi
printf('\nTheta = %.1f degrees',theta)
