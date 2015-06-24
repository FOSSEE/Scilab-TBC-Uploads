//find the position and voltage on the intersheaths and max and min stress
clear;
clc;
//soltion
//given
d=2;//cm
D=5.3;//cm
V=66*sqrt(2/3);//kV
V1=poly(0,"V1");
V2=poly(0,"V2");
V3=poly(0,"V3");
d1=poly(0,"d1")
d1d2=D*d;//d1*d2
d2=(d1^2)/2;
printf("d2= ");
disp(d2);
d1=(2*d1d2)^(1/3);//after putting value of d2 in d1*d2
d2=(d1^2)/2;
printf("d1= %.3f cm \nd2= %.1f cm \n",d1,d2);
V2=(d1/d)*V1;
V3=(d2/d)*V1;
V1=roots(V1+V2+V3-V);
V2=(d1/d)*V1;
V3=(d2/d)*V1;
Vf=V-V1;
Vs=V-V1-V2;
printf("Voltage on first intersheath(i.e. near to the core) = %.3f kV\n",Vf);
printf("Voltage on second intersheath= %.f kV\n",Vs);
Gmax=V1/((d/2)*log(d1/d));
Gmin=V1/((d1/2)*log(d1/d));
printf("Maximum stress= %.f kV/cm \nMinimum stress= %.2f kV/cm",Gmax,Gmin);
//There is an error in in book it is Voltage on second intersheath= 23.91 kV & Gmax and Gmin in book it is 39kV/cm & Gmin= 28.35 kV/cm
