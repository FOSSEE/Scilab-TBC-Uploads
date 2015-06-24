clear;
clc;
Vd=10;l=2;b=20;f=796;
w=2*%pi*f;
//Vd=voltage drop(in percentage),b=phase change(in degrees)
V=(100-Vd)/100; //V=Vr/Vs;
a=(20*log10(1/V))/l;
printf("(i)Attenuation = %f db/km\n",round(a*1000)/1000);
b1=(b/l)*(%pi/180); //b1=phase constant/km(in radians)
Vp=w/b1;
printf("(ii)The velocity of propagation = %d km/sec",Vp);
