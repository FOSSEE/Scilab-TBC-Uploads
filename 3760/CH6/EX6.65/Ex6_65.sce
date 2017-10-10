clc;
p=6; // number of poles
v=400; // rated voltage of induction motor
m=3; // number of phases
f=50; // frequency 
r1=0.2; // stator resistance
r2=0.5; // rotor resistance
xm=48; // magnetising reactance
x1=2; // leakage reactance of stator or rotor
n=1050; // speed of motor
ns=(120*f)/p; // synchronous speed
s=(ns-n)/ns; // operating slip
disp('case a');
Zf=(((r2/s)+%i*x1)*%i*xm)/((r2/s)+%i*(xm+x1)); // per phase impedance offered to stator by rorating air gap field
z=r1+%i*x1; // impedance of stator
Z=Zf+z; // total impedance
is=v/(sqrt(3)*abs(Z)); // stator current
pf=cosd(atand(imag(Z),real(Z))); 
printf('Stator line current is %f A\n',is);
disp('case b');
Po=m*(v/sqrt(3))*is*pf;
// negative power indicates induction machine is acting as generator
printf('Power fed back to 3 phase supply system is %f W\n',-Po);
disp('case c');
lr=600; // rotational and core losses
pg=m*is^2*real(Zf); // air gap power
l1=m*is^2*r1; // stator copper loss
l2=s*pg; // rotor copper loss
Tl=lr+l1+l2; // total losses
pi=-Po+Tl; // mechanical power input
ne=-Po/pi; 
printf('Efficiency of induction motor is %f percent\n',ne*100);
