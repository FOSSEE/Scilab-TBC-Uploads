// Initilization of variables
W1=4 // kN // load acting at a distance of 5 m from C
W2=3 // kN // load acting at a distance of 7.5 m from C
L=30 //m // distance AB
L1=15 // dist AC
L2=15 //m //dist BC
l1=10 //m // distance between A and 4 kN load
l2=22.5 //m // distance between A and 3 kN load
// Calculations
// (1) Reactions
Yb=((W1*l1)+(W2*l2))/L // kN // Take moment at A
Ya=W1+W2-Yb // kN // sum Fy=0
// Xa=Xb........(eq'n 1)   // sum Fx=0
// (2) Dismember
// Member AC. Consider equilibrium of member AC
// Xa=Xc ... Consider thus as eq'n 2 // sum Fx=0
Yc=W1-Ya // kN // sum Fy=0
// Take moment about A
Xc=((W1*l1)-(Yc*L1))/L1 // kN 
// now from eq'n 1 & 2
Xa=Xc // kN
Xb=Xa // kN
// The components of reactions at A & B are,
Ra=sqrt(Xa^2+Ya^2) // kN
Rb=sqrt(Xb^2+Yb^2) // kN
// Results
clc
printf('The reaction at A ( Ra) is %f kN \n',Ra)
printf('The reaction at B ( Rb) is %f kN \n',Rb)
