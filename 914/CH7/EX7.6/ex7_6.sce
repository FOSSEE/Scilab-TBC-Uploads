clc;
warning("off");
printf("\n\n example7.6 - pg283");
// given
id=6;  //[inch] - inlet diameter
od=4;  //[inch] - outlet diameter
Q=10;  //[ft^3/sec] - water flow rate
alpha2=%pi/3;  //[radians] - angle of reduction of elbow
alpha1=0;
p1=100;  //[psi] - absolute inlet pressure
p2=29;  //[psi] - absolute outlet pressure
patm=14.7;  //[psi] - atmospheric pressure
p1gauge=p1-patm;
p2gauge=p2-patm;
S1=(%pi*((id/12)^2))/4;
S2=(%pi*((od/12)^2))/4;
U1=Q/S1;
U2=Q/S2;
p=62.4;  //[lb/ft^3]
b=1;
w1=p*Q;  //[lb/sec] - mass flow rate
w2=w1;
gc=32.174;
// using the equation Fpress=p1gauge*S1-p2gauge*S2*cos(alpha2);
Fpressx=p1gauge*144*S1-p2gauge*144*S2*cos(alpha2);
Fpressy=p1gauge*144*S1*sin(alpha1)-p2gauge*144*S2*sin(alpha2);
wdeltaUx=(w1/gc)*((U2)*(cos(alpha2))-(U1)*(cos(alpha1)));
wdeltaUy=(w1/gc)*((U2)*(sin(alpha2))-(U1)*(sin(alpha1)));
Fextx=wdeltaUx-Fpressx;
Fexty=wdeltaUy-Fpressy;
Fext=((Fextx)^2+(Fexty)^2)^(1/2);
alpha=180+(atan(Fexty/Fextx))*(180/%pi);
printf("\n\n The force has a magnitude of %flb and a direction of %f from the positive x direction(in the second quadrant",Fext,alpha);
printf("\n\n Also there is a force on the elbow in the z direction owing to the weight of the elbow plus the weight of the fluid inside");







