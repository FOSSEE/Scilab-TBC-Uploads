clc;
p=3*10^6; // rated power of alternator
v=11000; // rated voltage of alternator
r=0.4; // per phase effective resistance
vl=12370; // line to line voltage at zero leading power factor
i=100; // load current at zero power factor  
pf=0.8; // lagging power factor at which voltage regulation has to be determined
vt=vl/sqrt(3); // per phase terminal voltage
Ef=v/sqrt(3); // per phase excitation EMF
ia=p/(sqrt(3)*v); // full load phase current
// for zero power factor load angle=0
zs=(vt-Ef)/i; // synchronous impedance
xs=sqrt(zs^2-r^2); // synchronous reactance
// From phasor diagram
Ef1=sqrt((Ef*pf+ia*r)^2+(Ef*sqrt(1-pf^2)+ia*xs)^2); // excitation EMF at 0.8 power factor
vr=((Ef1-Ef)/Ef)*100; 
printf('Voltage regulation at %f lagging power factor is %f percent',pf,vr);
