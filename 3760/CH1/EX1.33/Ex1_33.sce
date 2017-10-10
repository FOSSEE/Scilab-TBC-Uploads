clc;
P=500000; // VA rating of transformer
E2=400; // rated secondary voltage
nmax=0.98; // maximum efficiency of transformer
l=80; // percentage of full load at which maximum efficiency occurs
ze2=4.5; // percentage impedance
pt=((1/nmax)-1)*P*(l/100); // total losses
pc=pt/2; // core loss = ohmic loss at maximum efficiency
poh=pc; // ohmic loss
pohl=poh*(100/l)^2; // full load ohmic losses
re2=(pohl/P)*100; // percentage resistance
xe2=sqrt(ze2^2-re2^2); // percentage leakage reactance
pfl=re2/ze2; // load power factor
vr=re2*pfl+xe2*sqrt(1-pfl^2); // voltage regulation
dv=(E2*vr)/100; // change in terminal voltage
V2=E2-dv; // Secondary terminal voltage
printf('Load power factor at which secondary terminal voltage is minimum is %f\n',pfl);
printf('Secondary terminal voltage is %f v',V2); 
// answer for total losses is given wrong in the book
