clc;
e=1.2; // pu excitation emf
xs=0.8; // pu synchronous reactance
vt=1; // pu rated voltage
ia=1; // pu armature current for KVA=100 %, vt*ia=1 therefore ia=1;
pf=cosd(asind((e^2-xs^2-1)/(-2*xs))); // leading power factor
pd=vt*ia*pf; 
printf('Mechanical power developed by motor is %f pu\n',pd);
e=1; // pu excitation emf reduced to generate 100% emf
de=asind((pf*xs)/(vt*e)); // load angle
ia=(sqrt(vt^2+e^2-2*e*vt*cosd(de)))/xs; // new armature current
p=(vt*ia)*100; 
printf('New KVA rating is %f percent ',p);

