//chapter 19
//example 19.2
//page 814
printf("\n")
printf("given")
Vcc=13;Icq=5*10^-3;Vceq=8;Vp=Vceq;Ip=Icq;nt=.8;
Pi=Vcc*Icq
Po=.5*Vp*Ip
P0=nt*Po
n=(P0/Pi)*100;
printf(" maximum efficiency is %3.2f percentage\n",n)