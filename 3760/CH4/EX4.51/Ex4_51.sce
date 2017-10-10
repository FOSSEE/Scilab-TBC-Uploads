clc;
v=250; // rated voltage of dc shunt motor
n1=1200; // no load speed
N=1000; // turns per pole in shunt field winding 
n2=900; // reduced speed
ia=100; // full load armature current
rf=0.2; // series field resistance
ra=0.1; // armature resistance
ar=0.04; // armature reaction as afraction of main field m.m.f
// At no load counter EMF=v therefore from magnetization curve given in fig 4.76 field current is
IF=[ 0.38 0.58 0.8 1.1 1.36 1.76];
EA=[125 180 215 250 275 300];
plot(IF,EA);
xlabel('field current');
ylabel('counter EMF');
title('Magnetising curve');
ifs1=1.1; // field current
Ats1=ifs1*N; // ampere turns for field current
Ea2=v-ia*(ra+rf); // counter EMF at full load 
// magnetization curve is for 1200 rpm, therefore full load counter EMF corresponding to it is 
Ea2=Ea2*(n1/n2);
// corresponding to above counter EMF field current from magnetization curve is 
ifs2=1.62;
Ats2=(ifs2*N)/(1-ar); // ampere turns for field current at full load
at=Ats2-Ats1; // series field
t=at/ia; 
printf('Number of series turns per pole to reduce speed to %f rpm is %f ',n2,ceil(t));
