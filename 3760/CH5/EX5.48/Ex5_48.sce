clc;
p0=1000; // full load power rating of substation
pf=0.71; // lagging power factor
pfn=0.87; // desired power factor
// from phasor dagram 5.109
p1=p0*pf; // load KW
p2=sqrt(p0^2-p1^2); // load KVAr
pn=p0*pfn; // new power delivered to load
p0n=pn/pf; // new load KVA
pl=p0n-p0; 
printf('Permissible additional load at %f lagging power factor is %f KVA\n',pf,pl);
p2n=sqrt(p0n^2-pn^2); // new load KVAr
p2ns=sqrt(p0^2-pn^2); // new load KVAr with the use of synchronous condensor
R=p2n-p2ns; 
printf('Rating of synchronous condensor is %f KVA',R);
