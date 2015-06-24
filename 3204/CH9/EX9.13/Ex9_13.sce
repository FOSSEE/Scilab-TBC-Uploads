// Initilization of variables
W1=2 // kN // load acting at a distance of 1m from point A
W2=1 // kN // load acting at a distance of 1m from point B
theta=30 // degree
L=4 // m // length of the tie beam
l=1 //m // length of each member in the tie
// Calculations
// (a) Reactions
Yb=((W1*l)+(W2*3*l))/L // kN // Taking moment about A
Ya=W1+W2-Yb // kN // sum Fy=0
// (b) Dismember
// MEMBER AB
// Xa=Xb........ (eq'n 1) // sum Fx=0
// MEMBER AC
// Xa=Xc.........(eq'n 2) // sum Fx=0
Yc=W1-Ya // kN // sum Fy=0
// Taking moment about A
Xc=((W1*l)-(Yc*2*l))/(2*tand(theta)) // kN
// From eq'n 1 & 2
Xa=Xc // kN
Xb=Xa // kN
// Results
clc
printf('The force in tie bar AB is %f kN \n',Xb)
