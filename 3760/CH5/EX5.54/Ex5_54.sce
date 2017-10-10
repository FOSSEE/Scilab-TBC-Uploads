clc;
p=2*10^6; // rated power of alternator
v=11000; // rated voltage of alternator
zs=0.3+5*%i; // synchronous impedance per phase
pf=0.8; // lagging power factor
vt=v/sqrt(3); // terminal voltage
ia=p/(sqrt(3)*v); // full load armature current
// with vt as reference phasor
Ef=vt+ia*(pf-sqrt(1-pf^2)*%i)*zs; 
// now excitation level is same but load power fcator is leading
printf('Load current is %f A\n',ia);
de=cosd(atand(imag(Ef),real(Ef))); // angle between excitation and terminal voltage
vt=abs(Ef)*(de+sqrt(1-de^2)*%i)-ia*(pf+sqrt(1-pf^2)*%i)*zs; 
printf('Terminal voltage at %f leading power factor is %f V per phase\n',pf,abs(vt));
printf('Line terminal voltage is %f KV',(sqrt(3)*abs(vt))/1000);
