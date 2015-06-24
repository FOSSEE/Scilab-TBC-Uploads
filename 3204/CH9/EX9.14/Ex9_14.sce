// Initilization of variables
W=1000 // N 
r=0.25 // radius of pulley at E 
Lab=2 //m
Lad=1 // m
Lbd=1 // m 
Ldc=0.75 // m
l1=0.5 //m // c/c distance between bar AB and point E
l2=1.25 // m // dist between rigid support and the weight
// Calculations
// (a) Reactions
Xa=W // N // sum Fx=0
Yb=((W*l1)+(W*l2))/Lab // N // Take moment about A
Ya=W-Yb // N // sum Fy=0
// Dismember
// MEMBER ADB
// consider triangle BCD  to find theta, where s= length of bar BC, 
s=sqrt(Lbd^2+Ldc^2) // m
theta=acosd(Lbd/s) // degree
// equilibrium eq'n of member ADB
Yd=(Ya*Lab)/Lad //  take moment about B
Fbc=(Yb+Ya-Yd)/sind(theta) // N // sum Fy=0
Xd=(Fbc*cosd(theta))+(Xa) // N // sum Fx=0
// PIN D
Rd=sqrt(Xd^2+Yd^2) // N // shear force on the pin
// Results
clc
printf('The compressive force in bar BC (Fbc) is %f N \n',Fbc)
printf('The shear force on the pin is %f N \n',Rd)
