//Page Number: 290
//Example 5.4
clc;
//Given
V=1000;  //V
r0=40D+3; //ohm
i0=25D-3; //A
f=3D+9; //Hz
d=1; //mm
d1=d/1000; //m
l=4; //cm 
l1=4/100; //m
j1x=0.582;
x=1.841;
rsh=30D+3; //ohm

//(i) Input gap voltage
w=2*%pi*f;
v0=(5.93D+5*sqrt(V));
thetag=(w*d1)/v0;
bet=sin(thetag/2)/(thetag/2);
theta0=(w*l1)/v0;
vmax=(2*V*x)/(bet*theta0);
disp('V',vmax,'Input gap voltage:');

//(ii) Voltage gain
av=(bet*bet*theta0*j1x*rsh)/(r0*x);
disp(av,'Voltage gain:');

//(iii) Efficiency
v2=bet*2*i0*j1x*rsh;
eet=(bet*2*i0*j1x*v2)/(2*i0*V);
disp('%',eet*100,'Efficiency:');

//(iv) Beam loading conductance
gbl=(i0/(2*V))*((bet*bet)-(bet*cos(thetag/2)));
disp(gbl,'Beam loading conductance:');

//Ansewr for beam loading conductance is calculated wrong in book
