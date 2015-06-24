clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-7.4 Page No.143\n');

D=3/4;                //[in] Diameter of the bolt
At=0.334;             //[in^2] Area of thread
As=%pi*D^2/4;         //[in^2] Area of shank

//Note-In the book As=0.442 in^2 is used instead of As=0.4417865 in.

E=30*10^6;            //[lb/in^2] Modulus of elasticity
Lt=2;                 //[in] Length of the thread
Ls=6;                 //[in] Length of the shank
h=0.03;               //[in] Height from which the weight falls
W=500;                //[lb] Falling load

Kt=At*E/Lt;           //[lb/in] Stiffness of threaded portion
Ks=As*E/Ls;           //[lb/in] Stiffness of shank

K=Kt*Ks/(Kt+Ks);      //[lb/in] Overall stiffness

Delta=(W/K)+(W/K)*sqrt(1+2*h*K/W); //[in] Deflection

A=[Ls/E, Lt/E; 0.442, -0.334];
b=[Delta; 0];
S=A\b;

S=max(S);            //[lb/in^2] Maximum stress in the bolt

//Note-In the book Delta=0.0048 in is used instead of Delta=0.0047619 in.

mprintf('\n The maximum stress in this bolt is %f lb/in^2.',S);

Ln=8;               //[in] Length when shank has same area as threads
Kn=At*E/Ln;         //[lb/in] Stiffness
Deltan=(W/Kn)+(W/Kn)*sqrt(1+2*h*Kn/W);  //[in] Deflection
S=Deltan*E/Ln;      //[ln/in^2] Stress

mprintf('\n If shank has the same area as threads then stress is %f lb/in^2 and deflection is %f in.',S,Deltan);






