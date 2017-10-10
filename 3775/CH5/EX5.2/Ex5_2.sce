//Ex 5.2 page 185

clc;
clear;
close;

R=5;// ohm
Vs=300;// V
f=1*1000;// Hz
Ton=20;// ms
Toff=10;// ms

k= Ton/(Ton+Toff);// duty ratio
f=1000/(Ton+Toff);//Hz
Voav=Vs*k;// V
Ioav=Voav/R;// A
printf('\n duty ratio = %.3f',k)
printf('\n chopping frequency = %.2f Hz',f)
printf('\n Average load voltage = %.2f V', Voav)
printf('\n Average load current = %.2f A', Ioav)
