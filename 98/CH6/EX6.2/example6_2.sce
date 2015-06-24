//Chapter 6
//Example 6_2
//Page 109

clear;clc;

v=400;
f=50;
im=31.7;
pf1=0.7;
pf2=0.9;

acim=im*pf1;
i=acim/pf2;
rcim=im*sin(acos(pf1));
rci=i*sin(acos(pf2));
ic=rcim-rci;
c=ic/v/(2*%pi*f);

printf("Active component of Im = %.2f A \n\n", acim);
printf("Active component of I = %.1f*I A \n\n", pf2);
printf("Reactive component of Im = %.2f A \n\n", rcim);
printf("Reactive component of I = %.2f A \n\n", rci);
printf("Current through capacitor = %.2f A \n\n", ic);
printf("C = %.2f uF \n\n", c*1e6);

