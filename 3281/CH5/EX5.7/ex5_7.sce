//Page Number: 294
//Example 5.7
clc;
//Given
f=3D+9; //hz
l=4; //cm
l1=4/100; //m
d=0.1; //cm
d1=d/100; //m
V=900; //V
i0=30D-3; //A
rsh=25D+3;//ohm
x=1.841;
j1x=0.582;

//(i) Input voltage for maximum output
v0=0.593D+6*sqrt(V);
w=2*%pi*f;
theta0=w*l1/v0; //rad
thetag=w*d1/v0; //rad
bet=sin(thetag/2)/(thetag/2);
v1max=2*V*x/(bet*theta0); //v
disp('V',v1max,'Input voltage for maximum output:');

//(ii) Voltage gain
r0=V/i0;//ohm
av=((bet^2)*theta0*j1x*rsh)/(x*r0);//V
disp('V',av,'Voltage gain:');

//(iii) Efficiency
ic=2*i0*j1x; //A
v2=bet*ic*rsh; //V
eet=bet*ic*v2/(2*i0*V);
disp('%',eet*100,'Efficiency:');

//(iv) Beam loading conductance
gb=(i0/(V*2))*(bet^2-(bet*cos(thetag/2)));//ohm
disp('ohm',gb,'Beam loading conductance:');
