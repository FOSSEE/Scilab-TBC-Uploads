//find the voltage on the intersheaths
clear;
clc;
//soltion
//given
d=2.5;//cm
d1=3.1;//cm
d2=4.2;//cm
D=6;//cm
V=66*sqrt(2/3);//kV
V1=poly(0,"V1");
V2=poly(0,"V2");
V3=poly(0,"V3");
g1max=V1/((d/2)*log(d1/d));//kV/cm
g2max=V2/((d1/2)*log(d2/d1));//kV/cm
g3max=V3/((d2/2)*log(D/d2));//kV/cm
V2=g1max/2.1244605;
V3=g1max/1.3350825;
V1=roots(V1+V2+V3-V);
V2=V1*1.7542;//after solving g1max=g2max
V3=V1*2.7857;//after solving g1max=g3max
Vf=V-V1;
Vs=V-V1-V2;
printf("Voltage on first intersheath(i.e. near to the core) = %.3f kV\n",Vf);
printf("Voltage on second intersheath= %.3f kV",Vs);
//THERE IS A SLIGHT ERROR DUE TO THE USAGE OF FLOATING POINT
//IN BOOK Vf=44.237 kV & Vs= 27.147kV
