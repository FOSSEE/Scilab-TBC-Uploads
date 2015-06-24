//Chapter 8
//Example 8_22
//Page 192;

clear;clc;

l=150;
area=2;
us=5000;
sf=5;
sg=8.9;
ww=1.5;
mc=7;

w=area*sg*100/1000;
t=us*area/sf;
wt=sqrt(w^2+ww^2);
s=wt*l^2/8/t;
vsag=s*w/wt;

printf("Wt of conductor = %.2f kg \n\n", w);
printf("Working tension = %.0f kg \n\n", t);
printf("Total weight = %.2f kg \n\n", wt);
printf("Slant sag = %.2f m \n\n", s);
printf("Vertcal sag = %.2f m \n\n", vsag);
printf("Ground clearance = %.2f m \n\n", vsag+mc);
