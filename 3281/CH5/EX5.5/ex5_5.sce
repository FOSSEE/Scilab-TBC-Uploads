//Page Number: 291
//Example 5.5
clc;
//Given
f=3D+9; //hz
v=900; //V
i=30D-3; //A
d=4; //cm
d1=d/100; //m
gap=1; //mm
gap1=1/1000; //m
rsh=40D+3; //ohm
x=1.841;
j1x=0.582;
r=40D+3; //ohm
ebym=1.758D+11; //J

//(i) Electron velocity
v0=sqrt(2*ebym*v);
disp('m/s',v0,'Electron velocity:');

//(ii) Electron transit time
t=d1/v0;
disp('s',t,'Electron transit time:');

//(iii) Input voltage gap
w=2*%pi*f;
theta0=(w*d1)/v0;
thetag=(w*gap1)/v0;
bet=sin(thetag/2)/(thetag/2);
v2=(2*v*x)/(bet*theta0);
disp('V',v2,'Input voltage gap:');

//(iv) Voltage gain
av=(bet^2*theta0*j1x*rsh)/(x*r);
disp(av,'Voltage gain:');

//Values of v and f are changed in question and answer, hence vaules used in answer are taken.
//Also second part has not been done in book
