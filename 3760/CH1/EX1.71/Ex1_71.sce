clc;
P=20; // Rated KVA of transformer
E1=250; // rated primary voltage
E2=125; // rated secondary voltage
r1=0.15; // resistance of primary side
x1=0.25; // leakage reactance of primary side
r2=0.03; // resistance of secondary side
x2=0.04; // leakage reactance of secondary side
// given E1=V1(primary terminal voltage) 
k=E2/E1; // turns ratio
ip=(P*1000)/E1; // full load primary current
// voltage regulation=0, because E1=V1 therefore
pf=-atand(r1,x1); // phase angle between E1 and ip
// negative sign indicates that current leads voltage 
re2=r2/k^2; // secondary resistance referred to primary
xe2=x2/k^2; // secondary leakage reactance referred to primary
ip=ip*(cos(pf*(%pi/180))-%i*sin(pf*(%pi/180))); // complex form of primary current
V2=E1-ip*(re2+xe2*%i);
pfl=-atand(imag(V2),real(V2))-pf; // phase angle by which primary current leads secondary terminal voltage referred to primary 
PF=cos(pfl*(%pi/180)); 
vl=abs(V2)/2; 
isl=(P*1000)/E2;
pl=vl*isl*PF;
printf('Load voltage is %f v\n',vl);
printf('Load power factor is %f leading\n',PF);
printf('Load power is %f W',pl); 
