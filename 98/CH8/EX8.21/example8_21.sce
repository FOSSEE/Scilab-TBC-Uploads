//Chapter 8
//Example 8_21
//Page 192

clear;clc;

l=214;
vsag=2.35;
w=1.125;
ww=1.5;
area=3.225;
bs=2540;

wt=sqrt(w^2+ww^2);
t=bs*area;
s=vsag*wt/w;
f=t*8*s/(wt*l^2);

printf("Total weight of 1m length of conductor = %.3f kg \n\n", wt);
printf("Working tension = %.0f/f kg \n\n",t);
printf("Slant sag = %.2f m \n\n", s);
printf("Safety factor = %.0f \n\n", f);
