//chapter 7
printf("\n");
n=0.9;
fmuf=10*10^6;
f=10*10^6;
h=400*10^3;
Nmax=(1-n^2)*f^2/81;
printf("the Nmax value is %g /m^3",Nmax);
fcr=sqrt(81*Nmax);
printf("\n the critical frequency is %gHz",fcr);
Dskip=2*h*sqrt((fmuf/fcr)^2-1);
printf("\n the skip distance is %gm",Dskip);
