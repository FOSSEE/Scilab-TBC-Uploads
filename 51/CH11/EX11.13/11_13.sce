clc;
clear;
T0=288;//K
p0=101;//kPa(abs)
l=2;//m
D=0.1;//m
f=0.02;
pd=45;//kPa(abs)
f=0.02;
k=1.4;
lnew=(50/100)*l;
x=lnew*f/D;
//from this value of x, following are found
Ma=0.7;
prat=1.5;//where prat=p1/pcritical
//from this value of Ma, following are found
pratio=0.72;//where pratio=p1/p0
dratio=0.79;//where dratio=d1/d0,1
Vratio=0.73;//where Vratio=V1/Vcritical
//hence,
p2=(1/prat)*pratio*p0;//kPa(abs)
pcritical=p2; 
//we find that pd<pcritical
d1=dratio*(1.23);//kg/(m^3)
Vcritical=(286.9*Tcritical*k)^0.5;//m/sec = V2
V1=Vratio*Vcritical;//m/sec
m=d1*%pi*(D^2)*V1/4;//kg/sec
disp("kg/sec",1.65,"is less than the flowrate for the longer tube =","kg/sec,",m,"The flowrate for the smaller tube=")