//8.1
clc;
Vcc=12;
Re=3.8*10^3;
Rc=4.1*10^3;
Ie=(Vcc-0.7)/Re*10^3;
printf("Ie=%3f mA",Ie)
Ic=0.5*Ie;
printf("\nIc=%3f mA",Ic)
Vo=Vcc-Ic*Rc*10^-3;
printf("\nVo=%1f V",Vo)