clc;
warning("off");
printf("\n\n example7.4 - pg280");
// given
id=6;  //[inch] - inlet diameter
od=4;  //[inch] - outlet diameter
Q=10;  //[ft^3/sec] - water flow rate
alpha2=%pi/3;  //[radians] - angle of reduction of elbow
alpha1=0;
p1=100;  //[psi] - absolute inlet pressure
p2=29;  //[psi] - absolute outlet pressure
S1=(%pi*((id/12)^2))/4;
S2=(%pi*((od/12)^2))/4;
U1=Q/S1;
U2=Q/S2;
mu=6.72*10^-4;  //[lb*ft^-1*sec^-1]
p=62.4;  //[lb/ft^3]
Nrei=((id/12)*U1*p)/(mu);
disp(Nrei,"Nre(inlet)=");
Nreo=((od/12)*U2*p)/(mu);
disp(Nreo,"Nre(outlet)=");
// thus
b=1;
w1=p*Q;  //[lb/sec] - mass flow rate
w2=w1;
gc=32.174;
// using the equation (w/gc)*((U1)*(cos(alpha1))-(U2)*(cos(alpha2)))+p1*S1*cos(alpha1)-p2*S2*cos(alpha2)+Fextx=0;
Fextx=-(w1/gc)*((U1)*(cos(alpha1))-(U2)*(cos(alpha2)))-p1*144*S1*cos(alpha1)+p2*144*S2*cos(alpha2);
disp(Fextx,"Fext,x=");
Fexty=-(w1/gc)*((U1)*(sin(alpha1))-(U2)*(sin(alpha2)))-p1*144*S1*sin(alpha1)+p2*144*S2*sin(alpha2);
disp(Fexty,"Fext,y=");
printf("\n\n the forces Fxt,x and Fext,y are the forces exerted on the fluid by the elbow.Fext,x acts to the left and Fext,y acts in the positive y direction.Note that the elbow is horizantal,and gravity acts in the z direction");


