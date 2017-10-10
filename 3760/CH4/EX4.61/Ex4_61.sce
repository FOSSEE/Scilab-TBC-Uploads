clc;
n=800; // speed at which magnetization curve is given
// case a
v=600; // dc voltage source
ra=0.3; // armature resistance
rf=0.25; // field resistance
T=300; // given torque
VT=[ 200 375 443 485 510 518]; // terminal voltage
IF=[ 15 30 45 60 75 90 ]; // field current
EA1=VT+IF*ra; // generated EMF
EA2=v-IF*(ra+rf); // generated EMF for v=600 V
N2=n*(EA2./EA1); // speed for v= 600 V
TE=(EA2.*IF.*EA1*60)./(2*%pi*n*EA2); //torque
subplot(221);
plot(TE,N2); 
xlabel('Torque(Nm)');
ylabel('speed(rpm)');
title('speed-torque');
subplot(222);
plot(TE,IF); 
xlabel('Torque(Nm)');
ylabel('current(A)');
title('current-torque');
disp('from curves, for a torque of 300 Nm, speed is 940 rpm and current is 52.5 A');
disp('case b');
rd=0.25; // diverter resistance put in parallel with series combination of armature and field resistance
ia1=30;
ia2=60; // armature currents
if1=ia1*(rd/(rd+rf)); // field current corresponding to ia1
Ea1=204.5; // given counter EMF for field current
Ea2=v-ia1*(ra+((rd*rf)/(rd+rf))); // counter EMF for voltage supply of 600 V
n2=n*(Ea2/Ea1);
printf('Speed at %f A armature current is %f rpm\n',ia1,n2);
T=(Ea1*60*ia1)/(2*%pi*n);
printf('Torque at %f A armature current is %f Nm\n',ia1,T);
if1=ia2*(rd/(rd+rf)); // field current corresponding to ia1
Ea1=384; // given counter EMF for field current
Ea2=v-ia2*(ra+((rd*rf)/(rd+rf))); // counter EMF for voltage supply of 600 V
n2=n*(Ea2/Ea1);
printf('Speed at %f A armature current is %f rpm\n',ia2,n2);
T=(Ea1*60*ia2)/(2*%pi*n);
printf('Torque at %f A armature current is %f Nm\n',ia2,T);
disp('case c');
ia3=75; // armature current
t=0.8; // tapping percentage of field winding as a fration of full series turn
ifl=t*ia3; // corresponding field current
Ea=503; // given counter EMF for field current
Ea2=v-ia3*(ra+t*rf); // counter EMF for voltage supply of 600 V
n2=n*(Ea2/Ea);
printf('Speed at %f A armature current is %f rpm\n',ia3,n2);
T=(Ea*60*ia3)/(2*%pi*n);
printf('Torque at %f A armature current is %f Nm\n',ia3,T);
