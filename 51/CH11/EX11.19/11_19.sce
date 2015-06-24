clc;
clear;
x1=0.5;//m
x2=0.3;//m
Acritical=0.1;//m^2
//at x1, Max1 is found as
Max1=2.8;
//and px/p0,x is found as
pratio1=0.04;
//For this value of Max, py/px is found as
prat1=9;
pfraction1=prat1*pratio1;//where pfraction=py/p0,x = pIII/p0,x
//at x2, Max2 is found as
Max2=2.14;
//for this value of Max2, the following are found
prat2=5.2;
prat22=0.66;//where prat22=p0,y/p0,x
May=0.56;
//for this valur of May, Ay/Acritical is found as
Aratio=1.24;
Arat=(Acritical+(x1^2))/(Acritical+(x2^2));//where Aratio=A2/Ay
Afraction=Aratio*Arat;//where Afraction=A2/Acritical
A2=Acritical+(x1^2);//m^2
Acritical1=A2/Afraction;//where Acritical1 critical area for the isentropic flow downstream of the shock
//with the value of Afraction, the following are found
Ma2=0.26;
pfraction=0.95;//where pfraction=p2/p0,y
//hence,
pfrac=pfraction*prat22;//where pfrac=p2/p0,x
disp(pfraction1,"The ratio of back pressure to inlet stagnation pressure that will result in a normal shock at the exit of the duct=")
disp(pfrac,"The value of back pressure to inlet stagnation pressure required to position the shock at (x=0.3 m)=")
