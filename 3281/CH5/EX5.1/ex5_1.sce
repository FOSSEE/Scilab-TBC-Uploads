//Page Number: 288
//Example 5.1
clc;
//Given
f=10D+9; //Hz
v=9D+3; //V
i=40D-3; //A
l=3; //cm
l1=l/100; //m
G=2D-6; //mho
bet=0.92;
j1x=0.582;
x=1.841;
ebym=1.7D+11; //J

//Maximum voltage
w=2*%pi*f;
v0x=sqrt(2*ebym);
thet=(w*l1)/(v0x*sqrt(v));

av=(bet^2*thet*i*j1x)/(x*v*G);
disp('V',av,'Maximum voltage:');

//Power Gain
ic=2*i*j1x;
v2=(bet*ic)/G;
pout=bet*ic*v2;
pin=2*i*v;

//Efficiency
eet=pout/pin;
disp('%',eet*100,'Power gain:');

//Answer for effciency comes out to be wrong, it is calculted wrongly in book
