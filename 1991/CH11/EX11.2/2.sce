clc
clear
//input
vbe=1.2//pd across emitter
ib=120*10^-6//base current
v1=1.5//final voltafe
i2=175*10^-6//increased current
//calculation
r=vbe/ib//static input resistence
h=(v1-vbe)/(i2-ib)//input hybrid parameter
//output
printf("the static input resistence is %3.0e ohm",r)
printf("\nthe input hybrid parameter is %3.3e ohm",h)
