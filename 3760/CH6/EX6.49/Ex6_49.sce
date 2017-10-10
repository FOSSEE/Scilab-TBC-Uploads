clc;
p=150000; // rated power of induction motor
v=400; // rated voltage of induction motor
m=3; // number of phases
r1=0.02; // stator resistance
r2=0.04; // rotor resistance
xm=9.8; // magnetising reactance
x1=0.2; // leakage reactance of stator or rotor
s=0.04; // slip
n=0.93; // efficiency
disp('case a');
Zf=(((r2/s)+%i*x1)*%i*xm)/((r2/s)+%i*(xm+x1)); // per phase impedance offered to stator by rorating air gap field
z=r1+%i*x1; // impedance of stator
Z=Zf+z; // total impedance
is=v/(sqrt(3)*abs(Z)); // stator current
pg=m*is^2*real(Zf); // air gap power
l1=m*is^2*r1; // stator copper loss
l2=s*pg; // rotor copper loss
Tl=((1/n)-1)*p; // total losses
lr=Tl-(l1+l2); // rotational and core losses
printf('Rotational and core losses are %f W\n',lr); 
disp('case b');
s=-0.04; // slip
Zf=(((r2/s)+%i*x1)*%i*xm)/((r2/s)+%i*(xm+x1)); // per phase impedance offered to stator by rorating air gap field
Z=Zf+z; // total impedance
is=v/(sqrt(3)*abs(Z)); // stator current
pf=cosd(180-atand(imag(Z),real(Z))); // power factor
printf('Power factor at the generator terminal is %f leading\n',pf);
po=sqrt(3)*is*v*pf; // electrical output
printf('Electrical output is %f KW\n',po/1000);
pg=-m*is^2*real(Zf); // air gap power
l1=m*is^2*r1; // stator copper loss
l2=-s*pg; // rotor copper loss
Tl=l1+l2+lr; // total losses
pi=Tl+po; // mechanical power input
ne=po/pi; 
printf('Efficiency is %f percent',ne*100);
