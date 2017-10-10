clc;
l=1800; // total load on factory
pf=0.6; // power factor
pfn=0.95; // desired power factor
// from phasor diagram 5.107
l1=l/pf; // load in VA
a1=acosd(pf); // phase angle between terminal voltage and armature current
a2=acosd(pfn); // phase angle corresponding to desired power factor
k1=l1*sind(a1); // KVAr of load
k2=l*tand(a2); // combined KVAr
disp('case a');
s=k1-k2; 
printf('Synchronous condenser rating is %f KVA\n',floor(s));
disp('case b');
r=sqrt(l^2+k2^2);
printf('Total KVA of factory is %f KVA',r);
