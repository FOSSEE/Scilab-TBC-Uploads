//Find the inductance of a 3 phase line(plane)
clear;
clc;
//soltion
//given
r=1;//cm//radius of the conductor
re=r*exp(-1/4);
d=300;//cm//spacing b/w conductors
C1=0.2*[log(d/re)+0.5*log(2)];
C2=0.2*((sqrt(3))/2)*log(2);
La=complex(C1,-C2);
Lb=0.2*log(d/re);
Lc=complex(C1,C2);
printf("La= (%.2f %.2fj)mH\n",real(La),imag(La));
printf("Lb= %.4fmH\n",Lb);
printf("Lc= (%.2f +%.2fj)mH\n",real(Lc),imag(Lc));
