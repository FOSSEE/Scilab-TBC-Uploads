clear all; clc;
disp("Ex 2_3")
f=2000//magnitude of force F in N
si=115//angle between two forces in degrees
//refer figure 2-10b
si_rad=115*%pi/180//angle between two forces in radian
//using law of cosines
F_R=sqrt(f1^2+f2^2-2*f1*f2*cos(si_rad))
F_Rr=round(F_R)
printf('\nThe resultant of the two forces in magnitude is %g N',F_Rr)
//to find the angle theta between F1 and F_R
//using law of sines
k=f2/F_R*sin(si_rad)
k1=asin(k)//angle in radian
theta=k1*180/%pi//angle in degrees
printf('\nThe value of angle theta in degrees is %.1f',theta)
//to find angle phi
phi=theta+15//direction of F_R with respect to horizontal
printf('\nThe direction of resultant force in degrees measured from the horizontal is %.1f ',phi)
