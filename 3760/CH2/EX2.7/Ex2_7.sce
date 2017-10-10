clc;
N=1500; // number of turns in coil
i=3; // current carried by coil
uo=4*%pi*10^-7; // free space permeability
l=0.04; // side of plunger
A=%pi*(l/2)^2; // cross section area of plunger
disp('case a');
disp('for gap length G=2 cm'); 
g=0.02; // air gap length in cm
x=0; // displacement of plunger
G1=g-x; // gap length
B=(uo*i*N)/G1; // air gap flux density
printf('Air gap flux density is %f Wb/m^2\n',B);
L1=(N^2*uo*A)/G1;
printf('Coil inductance is %f H',L1);
disp('for gap length G=1.5 cm'); 
g=0.02; // air gap length in cm
x=0.005; // displacement of plunger
G2=g-x; // gap length
B=(uo*i*N)/G2; // air gap flux density
printf('Air gap flux density is %f Wb/m^2\n',B);
L2=(N^2*uo*A)/G2;
printf('Coil inductance is %f H',L2);
disp('for gap length G=1 cm'); 
g=0.02; // air gap length in cm
x=0.01; // displacement of plunger
G3=g-x; // gap length
B=(uo*i*N)/G3; // air gap flux density
printf('Air gap flux density is %f Wb/m^2\n',B);
L3=(N^2*uo*A)/G3;
printf('Coil inductance is %f H',L3);
disp('for gap length G=0.5 cm'); 
g=0.02; // air gap length in cm
x=0.015; // displacement of plunger
G4=g-x; // gap length
B=(uo*i*N)/G4; // air gap flux density
printf('Air gap flux density is %f Wb/m^2\n',B);
L4=(N^2*uo*A)/G4;
printf('Coil inductance is %f H',L4);
disp('case b');
disp('for gap length G=2 cm');
W=(i^2*L1)/2;
printf('Energy stored is %f watt-sec\n',W);
disp('for gap length G=1.5 cm');
W=(i^2*L2)/2;
printf('Energy stored is %f watt-sec\n',W);
disp('for gap length G=1 cm');
W=(i^2*L3)/2;
printf('Energy stored is %f watt-sec\n',W);
disp('for gap length G=0.5 cm');
W=(i^2*L4)/2;
printf('Energy stored is %f watt-sec\n',W);
disp('case c');
disp('for gap length G=2 cm');
fe=round((i^2*g*L1)/(2*G1^2));
printf('Electromagnetic force is %f N\n',fe);
disp('for gap length G=1.5 cm');
fe=(i^2*g*L1)/(2*G2^2);
printf('Electromagnetic force is %f N\n',fe);
disp('for gap length G=1 cm');
fe=round((i^2*g*L1)/(2*G3^2));
printf('Electromagnetic force is %f N\n',fe);
disp('for gap length G=0.5 cm');
fe=round((i^2*g*L1)/(2*G4^2));
printf('Electromagnetic force is %f N\n',fe);
disp('case 4');
// for g=2 cm and g=0.5cm, displacement is given by
xi=0;
xf=0.015;
Wm=integrate('(i^2*g*L1)/(2*(g-x)^2)','x',xi,xf);
printf('Mechanical work done is %f watt-sec\n',Wm);
disp('case e');
We=integrate('(i^2*g*L1)/(g-x)^2','x',xi,xf);
printf('Electrical energy supplied by source is %f watt-sec\n',We);
