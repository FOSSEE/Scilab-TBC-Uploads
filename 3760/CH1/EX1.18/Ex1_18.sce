clc;
P=20000; // rated power of transformer
E1=2500; // primary side voltage
E2=500; // secondary side voltage
r1=8; // primary resistance in ohm
x1=17; // primary leakage reactance in ohm
r2=0.3; // secondary resistance in ohm
x2=0.7; // secondary leakage reactane in ohm
k=E2/E1; // turns ratio
re2=r2+r1*k^2; // equivalent resistance referred to secondary winding
xe2=x2+x1*k^2; // equivalent leakage reactance referred to secondary winding
Il=P/E2; // full load secondary current
disp('case a');
pf=0.8; // lagging power factor
vd=Il*(re2*pf+xe2*sqrt(1-pf^2)); // Voltage drop in impedance in volts
vt=E2-vd; // secondary terminal voltage
printf('secondary terminal voltage for a lagging power factor is %f v\n',vt);
vr=((E2-vt)/E2)*100; // voltage regulation
printf('voltage regulation for a lagging power factor is %f percent\n',vr);
disp('case b');
pf=0.8; // leading power factor
vd=Il*(re2*pf-xe2*sqrt(1-pf^2)); // Voltage drop in impedance in volts
vt=E2-vd; // secondary terminal voltage
printf('secondary terminal voltage for a leading power factor is %f v\n',vt);
vr=((E2-vt)/E2)*100; // voltage regulation
printf('voltage regulation for a leading power factor is %f percent\n',vr);
