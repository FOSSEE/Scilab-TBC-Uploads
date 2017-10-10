clc;
B=[ 0.2 0.4 0.6 0.8 1 1.2];
H=[ 50 100 160 225 300 400];
plot(H,B); 
xlabel('magnetic field intensity');
ylabel('magnetic flux density');
title('B-H curve');
p=0.2; // force exerted by spring
g1=0.5*10^-2; // air gap length
g2=0.1*10^-2; // reduced gap length after coil is energised
n=2000; // coil turns
l=0.2; // mean length of magnetic iron path
A=0.2*10^-4; // area of cross-section
g=9.81; // acceleration due to gravity
l1=6; // gap length
l2=3; // gap length between spring and core
uo=4*%pi*10^-7; // free space permeability
disp('case a');
fe=(p*g*l2)/l1; // electromagnetic torque
Bg=sqrt((2*fe*uo)/A); // air gap flux density
printf('Air gap flux density is %f T\n',Bg);
// corresponding to value of Bg from B-H curve H is 
Hg=87.7; // magnetic flux intensity
ATi=l*Hg; // total ampere turn for iron path
ATg=(Bg*g1)/uo; // ampere turn for air gap
AT=ATi+ATg; // total ampere turns
ie=AT/n;
printf('Exciting current required to close the armature relay is %f A\n',ie);
disp('case b');
ATg=(Bg*g2)/uo; // ampere turn for air gap
AT=ATi+ATg; // total ampere turns
ie=AT/n;
printf('Exciting current required to keep the armature closed is %f A\n',ie);
