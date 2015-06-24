//Calculate the vertical sag
clear;
clc;
//soltion
//given
W=1170;//kg/km//Line conductor wieght
P=122;//kg/m^2//Wind pressure
L=200;//meter//span of the line
A=1.29;//cm^2//cross sectional area
U=4218*A;//kg//Breaking strength
sf=5;//safety factor
T=U/sf;//kg//max allowable tension
Wc=W/1000;//kg/m//Weight of conductor in meter
D=sqrt((4*A)/%pi);//cm//diameter of the conductor
printf("Diameter of the conductor= %.2f cm\n",D);
Ww=P*(D)*10^-2;//Wind force/m lenght
printf("Wind force= %.2fkg\n",Ww);
Wr=sqrt(Wc^2+Ww^2);//resultant weight
printf("Resultant sag= %.2fkg\n",Wr);
sag= (Wr*L^2)/(8*T);//m//Slant sag
printf("Slant Sag= %.2f m\n",sag);
Th=atand(Ww/Wc);//degree//angle between slant sag and vertical sag
Vsag=sag*cosd(Th);//m//Vertical sag
printf("Vertical sag= %.3fm",Vsag);
