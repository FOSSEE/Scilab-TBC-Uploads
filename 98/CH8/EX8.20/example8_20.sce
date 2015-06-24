//Chapter 8
//Example 8_20
//Page 191

clear;clc;

l=275;
d=1.96;
us=8060;
sf=2;
ice_t=1.27;
w=0.865;
pr=2;
wcc=0.91;
wp=3.9;

t=us/sf;
vol=%pi*ice_t*(d+ice_t)*100;
wi=wcc*vol/1000;
ww=wp*(d+2*ice_t)*100/1000;
wt=sqrt((w+wi)^2+ww^2);
sag=wt*l^2/8/t;

printf("Working tension = %.0f kg \n\n", t);
printf("Volume of ice per metre length of the conductor = %.0f cm^3 \n\n", vol);
printf("Weight of ice per metre length of conductor is %.2f kg \n\n", wi);
printf("Wind force/m length of conductor is %.3f kg \n\n", ww);
printf("Total weight of conductor per metre length of conductor is %.3f kg \n\n", wt);
printf("Sag = %.2f m \n\n", sag);
