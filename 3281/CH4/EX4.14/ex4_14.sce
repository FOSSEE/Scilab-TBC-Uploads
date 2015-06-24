//Page Number: 216
//Example 4.14
clc;
//Given
p=40; //mW
//Since port 3 is matched
x=sqrt(2);
s=[1 1 x;1 1 -x;x -x 0];
r1=40; //ohm
r2=60; //ohm
w=50; //ohm

//Reflection coefficients
T1=(w-r1)/(w+r1);
T2=(r2-w)/(r2+w);

//As power is fed into 1 and 2 equally
pd=p/2;

//Power delivered
//Port 1
p1=pd*(1-T1^2);
disp('mW',p1,'Power at port 1:');

//Port2
p2=pd*(1-T2^2);
disp('mW',p2,'Power at port 2:');
