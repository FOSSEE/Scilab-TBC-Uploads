clear
clc
disp("exanple7.1")
pow=100*10^6
calv=6400
threff=0.3
elceff=0.92
kcal=0.239*10^-3
eo=pow*3600
ei=eo/(threff*elceff)
eikc=ei*kcal
colreq=eikc/6400
printf("energy output in 1 hour is %eWatt.sec ",eo);
printf("\nenergy input in one hour is %ejoules Watt.sec\n",ei)
printf(" energy input in 1 hour is %ekcal.",eikc);
printf("\n coal required is %.3fkg per hour",colreq);
