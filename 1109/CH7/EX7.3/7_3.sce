clear;
clc
a=4.5;b=3;f=9*(10^9);c=3*(10^8);n=377
lo=c/f;
l=lo*(10^2);
lc=2*a;
printf("(i)Cutoff wavelegth = %f cm\n",lc);
lg=l /(sqrt(1-((l/lc)^2)));
printf("(ii)Guide wavelength = %f cm\n",fix(lg*100)/100);
Vp=(lg/l)*c*10^-8;
printf("(iii)Phase velocity = %f * 10^8 m/sec\n",fix(Vp*100)/100);
Vg=(l/lg)*c*10^-8;
printf("   Group velocity = %f * 10^8 m/sec\n",round(Vg*100)/100);
Z=n/(sqrt(1-((l/lc)^2)));
printf("(iv)Characteristic impedance = %f ohm",fix(Z));
