clear;
clc;
R=10.15;L=3.93*(10^-3);G=0.29*(10^-6);C=0.008*(10^-6);w=5000;r=7.3;l=246*(10^-3);
s=7.88;
Rc=R+(r/s);
Lc=L+(l/s);
al=((Rc/2)*sqrt(C/Lc))+((G/2)*sqrt(Lc/C));
printf("-a = %f neper/km\n",round(al*10000)/10000);
b=w*(sqrt(Lc*C));
printf("-b = %f radians/km\n",round(b*10^4)/10^4);
lo=2*%pi/b; //lo=lambda
printf("-lo = %f km\n",round(lo*100)/100);
Vp=(w/b)*10^-4;
printf("-Vp = %f * 10^4 km/sec\n",round(Vp*100)/100);
Zo=(sqrt(Lc/C))*10^-3;
printf("-Zo = %f * 10^3 ohms",fix(Zo*100)/100);
