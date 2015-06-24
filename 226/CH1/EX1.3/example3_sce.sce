//chapter 1
//example 1.3
//page 19
printf("\n")
printf("given")
l=1*10^-3;a=.1*10^-4;
ni=1.5*10^10;p=1.5*10^10;
disp("a)")
un=1500;up=500;//in cm3/V.s
q=1.6*10^-19;
m=q*((ni*un)+(p*up))*10^6;
printf( "mobility is %3.2fmicro/ohmcm\n",m)
R=l/(m*a);
printf(" resistance is %3.2fMohm\n",R)
disp("b)")
//for doped material
n=8*10^13;
p=(ni^2)/n
m=q*((n*un)+(p*up));
printf("mobility is %3.4f/ohmcm\n",m)
R=l/(m*a);
printf(" resistance is %dohm\n",R)