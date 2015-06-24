clc;
warning("off");
printf("\n\n example9.3 - pg389");
Nblades=4;  // no. of blades
d=9/12;  //[ft] - diameter of the impeller
dt=30/12;  //[ft] - diameter of the tank
Nbaffles=4;  //  no. of baffles
h=30;  // [inch]  - height of unit
mu=10;  //[cP] - viscosity of fluid
sg=1.1;  // specific gravity of fluid
s=300;  //[rpm] - speed of agitator
CbyT=0.3;  
V=(%pi*dt^3)/4; //volume of tank in ft^3
V1=V*7.48;  //[gal] - volume of tank in gallons
mu=mu*(6.72*10^-4);  //[lb/ft*sec]
p=sg*62.4;  //[lb/ft^3] - density of fluid
N=s/60;  //[rps] - impeller speed in revolutions per second
Nre=((d^2)*N*p)/mu;
disp(Nre,"Nre=");
printf("\n\n Therefore the agitator operates in the turbulent region");
Npo=1.62;
gc=32.174;
P=(Npo*(p*(N^3)*(d^5)))/(gc*550);
Cf=63025;
Tq=(P/s)*Cf;
PbyV=P/V;
PbyV1=P/V1;
TqbyV=Tq/V;
TqbyV1=Tq/V1;
printf("\n\n The power per unit volume and the torque per unit volume is \n P/V=%f hp/ft^3=%f hp/gal\n Tq/V=%f in*lb/ft^3=%f in*lb/gal",PbyV,PbyV1,TqbyV,TqbyV1);


