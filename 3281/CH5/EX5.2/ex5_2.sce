//Page Number: 288
//Example 5.2
clc;
//Given
l=2; //cm
l1=l/100;//m
f=5D+9; //Hz
i=25D-3; //A
n=21/4; 
e=1.6D-19;
m=9.1D-31;
thetag=0;
bet=1;
j1x=0.582;
x=1.841;

//(i) Beam Voltage
v0=(m*l1*l1*f*f)/(2*e*n*n);
disp('V',v0,'Beam voltage:');

//(ii) Input voltage
v1=x*v0/(%pi*bet*n);
disp('V',v1,'Input voltage:');

//(iii) Output voltage
v2=0.25*v0;
disp('V',v2,'Output voltage');

//(iv) Power output
pmax=i*v0*j1x;
disp('W',pmax,'Maximum power output:');

//(v) Efficiency
eet=j1x*bet*v2/v0;
disp('%',eet*100,'Efficiency:');
