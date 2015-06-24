//Page Number: 238
//Example 4.20
clc;
//Given
vswr=2;
D1=8; //mW
D2=2; //mW

//Reflection coefficient at arm 4
T=(vswr-1)/(vswr+1);
//Powwe delivered to D1
P=(D1*100)/(1-T^2);
P1=0.99*P;
//Power reflected at D1
W1=(P/100)*T*T;
//Power reflected at load
W2=D2-W1;
Tt=sqrt((W2*100)/(P1));
pt=(1+Tt)/(1-Tt);
disp(pt,'VSWR:');
Pl=P1*(1-(Tt*Tt));
disp('mW',Pl,'Power delivered:');

//Answer for P1 should be 792 but it is given as 800
