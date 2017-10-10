clc;
m=3; // number of phases
p=2; // number of poles
P=4*10^6; // rated power of generator
v=11000; // rated voltage of generator
as=72; // armature slots
cs=4; // conductor per armature slot
rs=24; // rotor slots
rp=10; // rotor slot angular pitch
cr=20; // conductors per rotor slot
z=0.1+2*%i; // armature leakage impedance per phase
pf=0.8; // lagging power factor
vt=v/sqrt(3); // terminal voltage
ia=P/(sqrt(3)*v); // full load armature current
// Open circuit characteristics have been plotted using table given in question.Per phase value of  excitation voltage is obtained fron table
IF=[ 40 80 120 160 200 240 280 320 360];
EA=[ 2490 4980 7470 9390 10620 11460 12030 12450 12660 ];
plot(IF,EA/sqrt(3));
xlabel('Field current');
ylabel('open circuit voltage');
title('open circuit characteristics');
Er=vt+ia*(pf-%i*sqrt(1-pf^2))*z; // air gap voltage
printf('Air gap voltage is %f V\n',abs(Er));
disp('Corresponding to magnitude of air gap voltage value of field MMF in terms of field current is obtained from O.C.C  (for textbook refer fig. 5.114)');
Fr=242; // field MMF in terms of field current
q=rs/p; // rotor slots per pole
kd=sind(q*rp/2)/(q*sind(rp/2)); // distribution factor
kp=1 ; // coil span factor for full pitch field coil
kw=kd*kp; // winding factor
Nf=(rs*cr)/p; // total field turns
F1f=(4*kw*Nf)/(%pi*p); // ratio of fundamental field mmf per pole to field current
Nph=(as*cs)/(m*p); // series turn per phase
q1=as/(m*p); // armature slots per pole per phase
v1=(p*180)/as; // armature slot angular pitch
kd=(sind(q1*v1/2))/(q1*sind(v1/2)); // distribution factor
kw=kd*kp; // winding factor
Fa=(0.9*m*Nph*ia*kw)/(p*F1f); // armature mmf in terms of field current
B=acosd(pf)+atand(imag(Er),real(Er)); // power factor angle + angle by which air gap voltage leads terminal voltage 
Ff=sqrt(Fr^2+Fa^2-2*Fr*Fa*cosd(90+B)); // equivalent field current
printf('Equivalent field current is %f A\n',Ff);
// corresponding to equivalent field current, excitation voltage is obtained from O.C.C
Ef=7168; // excitation EMF per phase
vr=((Ef-vt)/vt)*100; 
printf('Voltage regulation at full load %f lagging power factor is %f percent',pf,vr);
