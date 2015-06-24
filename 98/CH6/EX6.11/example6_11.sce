//Chapter 6
//Example 6_11
//Page 114

clear;clc;

ll=500;
l1=400;
pf1=0.707;
l2=800;
pf2=0.8;
l3=500;
pf3=0.6;
dcg=540;
n=0.9;

tlag=l1*tan(acos(pf1))+l3*tan(acos(pf3));
lead=l2*tan(acos(pf2));
tlead=tlag-lead;
ip=dcg/n;
tan_phi=tlead/lead;
phi=atan(tan_phi);
pf=cos(phi);

printf("Total lagging kVAR taken = %.2f \n", tlag);
printf("Leading kVAR taken = %.2f \n", lead);
printf("Total leading kVAR taken = %.2f \n", tlead);
printf("Motor input = %.2f kW \n", ip);
printf("phi = %.2f radians\n", phi);
printf("Power factor of synchronous motor = %.2f lead\n", pf);


