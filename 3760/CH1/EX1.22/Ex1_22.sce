clc;
P=10000; // rated power of transformer
E1=2000; // primary side voltage
E2=200; // secondary side voltage
f=50; // frequency in hertz
po=125; // no load power 
pfo=0.15; // no load power factor
zbh=E1^2/P; // base impedance on h v side
k=E2/E1; // turns ratio
zl=0.5+1*%i; // percent leakage impedance
zlh=zl*(zbh*k^2); // percent leakage impedance referred to h v side
Rc=E1^2/po; // coreloss resistance
Io=po/(E1*pfo); // No load current
Xm=E1/(Io*sqrt(1-pfo^2)); // magnetizing reactance
p=10000; // load power
pf=0.8; // power factor of load
il=p/(E2*pf); // secondary load current
ilp=il*k; // primary load current
vp=E1+ilp*(real(zlh)*pf+imag(zlh)*sqrt(1-pf^2));
ap=ilp^2*real(zlh); // active power loss in series resistance
ar=ilp^2*imag(zlh); // reactive power loss in series reactance
Ap=vp^2/Rc; // active power loss in coreloss resistance
Ar=vp^2/Xm; // reactive power loss in magnetizing reactance
cpl=p*(1+%i*tan(acos(0.8))); // complex power at load end in VA
cpi=(real(cpl)+ap+Ap)+%i*(imag(cpl)+ar+Ar); // complex power input to transformer VA
printf('real power input to transformer is %f W\n',real(cpi));
ipf=cos(atan(imag(cpi),real(cpi)));
printf('input power factor is %f lagging',ipf);
