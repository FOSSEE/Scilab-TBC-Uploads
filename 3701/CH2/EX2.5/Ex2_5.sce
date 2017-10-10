////Given
W=3                                      //ev
h=6.63*10**-34
e=1.6*10**-19
lembda=3.0*10**-7                     //m
c=3*10**8                             //m/s

//Calculation
v0=(W*e)/h
v=c/lembda
E=h*(v-v0)
E1=(h*(v-v0))/(1.6*10**-19)
V0=E/e

//Result
printf("\n (a) Threshold frequency  %0.2f *10**15 HZ",v0*10**-15)
printf("\n (b) Maximum energy of photoelectron  %0.2f eV",E1)
printf("\n (c) Stopping potential  %0.2f V",V0)
