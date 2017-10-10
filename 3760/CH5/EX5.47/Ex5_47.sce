clc;
l0=300; // total load on factory
pf=0.6; // lagging power factor
n=88; // percentage efficiency of motor
pfn=0.9; // desired power factor
l1=60; // mechanical load to be supplied
// from phasor diagram 5.108
pi=l1/(n/100); // synchronous motor input
lt=pi+l0; // combined load
disp('case a');
k=lt/pfn;
printf('Total load is %f KVA\n',k);
disp('case b');
a1=acosd(pf); // phase angle between terminal voltage and armature current
a2=acosd(pfn); // phase angle corresponding to desired power factor
k1=l0*tand(a1); // KVAr of load
k2=lt*tand(a2); // combined KVAr
s=k1-k2; // leading KVAr supplied by synchronous motor 
r=sqrt(s^2+pi^2);
printf('Capacity of synchronous motor is %f KVA\n',r);
disp('case c');
pfs=pi/r;
printf('Synchronous motor operating power factor is %f leading',pfs);
 
