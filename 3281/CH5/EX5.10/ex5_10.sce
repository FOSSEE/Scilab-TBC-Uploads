//Page Number: 296
//Example 5.10
clc;
//Given
f=4D+9;//hz
v0=10D+3;//V
i0=0.75;//A
v1=2; //V
bet=1;
rsh=10D+3;//ohm
p=5D-5;//C/m^3
r=0.6;
rsht=4D+3;//ohm
e=1.6D-19;
m=9.1D-31;
ee=8.854D-12;

//(i) Induced current and voltage in output cavity
w1=sqrt(e*p/(m*ee));//rad/sec
w=2*%pi*f;
wq=0.5*w1;//rad/sec
rr=w/wq;

i4=[(i0^3)*(rr^3)*(bet^6)*v1*(rsh^2)]/(8*(v0^3)); //A
disp('A',i4,'Induced current:');
v4=i4*rsht;//V
disp('kV',v4/1000,'Induced voltage:');

//(ii) Power output
pout=(i4^4)*rsht;//W
disp('W',pout,'Power output:');

//Answer for Pout should be 13.43 kW but it is given as 10.89kW as value of I4 is calculated as 1.289 but it comes out to be 1.35


