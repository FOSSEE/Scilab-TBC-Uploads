//Chapter 12
//Example 12.1
//page 448
//To calculate steady state power limit
clear;clc;

Xdg=1*%i;  //generator's
Xdm=1*%i;  //motor's
Xt=0.1*%i; //transformers
Xl=0.25*%i; //transmission line's
Xc=-1*%i; //static capacitor's
Xi=1*%i; //inductive reactor
Eg=1.2; //generator's internal voltage
Em=1; //motor's internal voltage

//case(i) steady state power limit without reactor
P1=(abs(Eg)*abs(Em))/(abs(Xdg+Xt+Xl+Xt+Xdm));
printf('\n\n Steady state power limit without reactor = %0.5f pu',P1);

//case(ii) steady state power limit with capacitive reactor
//three arms of star connected reactances are
Xa=Xdg+Xt+Xl; //from generator side
Xb=Xdm+Xt;   //from load side
Xc=Xc; //from reactor side

//converting star to delta
//reactance between generator side to load side is
Xab=(Xa*Xb+Xb*Xc+Xc*Xa)/Xc;
//power limit is
P2=(abs(Eg)*abs(Em))/(abs(Xab));
printf('\n\n Steady state power limit with capacitive reactor = %0.5f pu',P2);

//case(iii) steady state power limit with inductive reactor
//three arms of star connected reactances are
Xa=Xdg+Xt+Xl; //from generator side
Xb=Xdm+Xt;   //from load side
Xc=Xi; //from reactor side

//converting star to delta
//reactance between generator side to load side is
Xab=(Xa*Xb+Xb*Xc+Xc*Xa)/Xc;
//power limit is
P3=(abs(Eg)*abs(Em))/(abs(Xab));
printf('\n\n Steady state power limit with inductive reactor = %0.5f pu',P3);

