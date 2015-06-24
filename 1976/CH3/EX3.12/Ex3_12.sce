
//To Determine the Voltage at the far end
//Page 117
clc;
clear;
r=0.3; // Loop Resistance per km
x=0.15; // Loop Reactance per km

deff('x=reactive(y,z,v)','x=(sin(acos(y)))*z*v*x/1000') //To find the reactive drop of the current

deff('x=active(y,z,v)','x=y*z*v*r/1000') //To find the reactive drop of the current

//Power Factors of the loads from left to right
pf1=0.707;
pf2=1;
pf3=0.8;
//Currents delivering the respective loads from left to right
I1=50;
I2=60;
I3=40;
//Length of the conductors in metres
l1=200;
l2=300;
l3=300;
//Effective length of the conductors in metres
L1=l1;
L2=l1+l2;
L3=l1+l2+l3;
//Active component drops of the respective currents
Va1=active(pf1,I1,L1);
Va2=active(pf2,I2,L2);
Va3=active(pf3,I3,L3);
Vat=Va1+Va2+Va3; //Total Active Component Drop
//Reactive component drops of the respective currents
Vr1=reactive(pf1,I1,L1);
Vr2=reactive(pf2,I2,L2);
Vr3=reactive(pf3,I3,L3);
Vrt=Vr1+Vr2+Vr3; //Total Reactive Component Drop

Vt=Vrt+Vat; // Total voltage drop

printf('The voltage drop at the far end is %g V\n',Vt)
