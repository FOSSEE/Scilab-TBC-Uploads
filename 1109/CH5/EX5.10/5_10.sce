clear;
clc;
a=0.005;f=1000;al=0.05;att=10 //att=given attenuation in db
lo=att/(a*8.686);
printf("-For the open wire line the required length is lo = %f km\n",round(lo*10)/10);
lc=att/(al*8.686);
printf("-For the cable the required length is lc = %f km",fix(lc*100)/100);
