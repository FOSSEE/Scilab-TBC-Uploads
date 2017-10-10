clc;
v=220; // rated voltage of motor
i=15; // rated current of motor
ra=0.4; // net armature resistance
n=1500; // speed for which magnetization curve is given
IF=[ 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.2 1.45];
EA=[120 160 197 210 220 228 232 236 243 248];
plot(IF,EA);
xlabel('field current');
ylabel('voltage');
title('magnetising curve');
disp('case a');
ifg1=0.15; // initial generator field current
ifg2=1.4; //  final generator field current
ifm=0.6; // motor field current
// corresponding ifg1 counter EMF of generator from magnetization curve is 
Ea1=60;
vd=i*(ra+ra); // voltage drop in two armature resistance
Ea2=Ea1-vd; // counter EMF of motor
// but motor counter EMF for 0.6 A field current at 1500 rpm is
Ea3=210; 
nmin1=(Ea2/Ea3)*n; // minimum motor speed
// corresponding ifg2 counter EMF of generator from magnetization curve is 
Ea4=247;
Ea5=Ea4-vd; // counter EMF of motor
nmax1=(Ea5/Ea3)*n; // maximum motor speed
sr=nmax1/nmin1; // speed range
printf('Speed range for full load armature current is %f:1\n',sr);
// for no load generator counter EMF= motor counter EMf
nmin2=(Ea1/Ea3)*n; // minimum motor speed
pr=((nmin2-nmin1)/nmin2)*100;
printf('Percent speed drop from no load to full load for condition of minimum speed is %f percent\n',pr);
// for maximum generator field current generator counter EMF= motor counter EMf at no load
nmax2=(Ea4/Ea3)*n; // maximum motor speed
sr=nmax2/nmin2; // speed range
printf('Speed range for full load armature current is %f:1\n',sr);
pr=((nmax2-nmax1)/nmax2)*100;
printf('Percent speed drop from no load to full load for condition of maximum speed is %f percent\n',pr);
disp('case b')
// for generator field current=1 A counter EMF from magnetization curve is 
Ea6=236;
Ea7=Ea6-vd; // motor counter EMF at full load
Ea8=(Ea7/(2*nmax1))*n; 
printf('Motor counter EMF for %f rpm is %f V\n',n,Ea8);
// Corresponding to Ea8, field current is 
ifmi=0.25;
printf('Minimum motor field current is %f A\n',ifmi);
