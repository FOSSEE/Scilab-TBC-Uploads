clc;
P=1200; // rated VA of transformer
E1=240; // rated primary voltage
E2=110; // rated secondary voltage
xe=5; // total leakage reactance of transformer referred to primary
re=1; // total resistance of transformer referred to primary
vl=240; // rated voltage of load
R=2500; // core resistance
pf=1; // power factor 
ip=P/E1; // full load primary current
// assuming E1 as a reference
Vin=sqrt((E1+ip*re)^2+(ip*xe)^2); // input voltage when load is connected
pi=ip^2*re; // ohmic losses
pc=Vin^2/R; // core loss
n=(P*pf*100)/(P*pf+pi+pc); 
printf('Efficiency at full load is %f percent\n',n);
vr=((Vin-E1)/Vin)*100; 
printf('Voltage regulation for full load is %f percent',vr); 
