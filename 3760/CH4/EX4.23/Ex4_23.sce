clc;
disp('case a');
v=90; // voltage build up by regulating resistance
rs=(v*v)/(2*v); // shunt winding resistance
IF=[500 1000 1500 2000 2500 3000];
VA=[154 302 396 458 505 538 ];
subplot(313);
plot(IF,VA);
xlabel('Field ATs/pole');
ylabel('Generated e.m.f E,(V)');
title('Magnetizing curve for n=500 r.p.m.');
// from magnetizing curve for v=90, field current is 0.89 A
ifl=0.89; // field current
re=(v/(2*ifl))-rs; 
printf('Value of the resistance in the regulator is %f ohms\n',re);
disp('case b');
t1=800; // turns per pole of separately excited winding
r1=160; // resistance of winding
vc=220; // constant supply voltage
t2=500; // turns per pole of shunt winding
r2=200; // resistance of winding
AT1=(vc*t1)/r1; // Ampere turns of separately excited winding
// AT2=(t2/r2)*E is Ampere turns of shunt winding and E is generated EMF
AT3=AT1+(t2/r2)*VA
n1=500; 
n2=600; // given speeds
VA2=(n2/n1)*VA; // generated EMF for n=600 rpm
subplot(323);
plot(IF,VA2);
xlabel('Field ATs/pole');
ylabel('Generated e.m.f E,(V)');
title('Magnetizing curve for n=600 r.p.m.');
subplot(333);
plot(AT3,VA);
ylabel('Generated e.m.f E,(V)');
xlabel('Total ATs/pole due to both field winding');
title('Generated e.m.f E,(V) vs total Ampere turns/pole ');
// plot of variation of generated e.m.f with total Ampere turns per pole intersects magnetizing curve for n=500 rpm at P and  magnetizing curve for n=600 rpm at Q. (refer fig. 4.48)
// Point P gives no-load terminal voltage at 500 rpm and Q gives no-load terminal voltage at 600 rpm  
disp('No load voltage at 500 rpm is 490 V and at 600 rpm is 621 V');

