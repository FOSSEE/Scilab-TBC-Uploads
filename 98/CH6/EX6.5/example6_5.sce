//Chapter 6
//Example 6_5
//Page 111

clear;clc;

f=50;
v=400;
op=74.6;
pf1=0.75;
n=0.93;
pf2=0.95;
nc=4;
vc=100;

p=op/n;
phi1=acos(pf1);
phi2=acos(pf2);
lead=p*(tan(phi1)-tan(phi2));
lead_each=lead/3;
icp=2*%pi*f*v;
kvar=v*icp/1000;
c=lead_each/kvar;
c_each=c*nc;

printf("Leading kVAR taken by the condensor bank = %.2f kVAR \n\n", lead);
printf("Leading kVAR taken by the each of the three sets = %.2f kVAR \n\n", lead_each);
printf("Phase current of each capacitor is = %.2f*C A \n\n", icp);
printf("kVAR/phase = %.2f*C \n\n", kvar);
printf("C = %.2f uF \n\n", c*1e6);
printf("Capacitance of each capacitor is = %.2f uF \n\n", c_each*1e6);


