//Ex 4.2 page 158

clc;
clear;
close;


R=10;// ohm
Vs=230;// V
f=50;// Hz
nc=18;// conducting cycles
noff=32;// off cycles

k=nc/(nc+noff);// duty ratio
Vor=Vs*sqrt(k);// V
Po=Vor**2/R;// W
Pi=Po;// W (losses are negligble)
Ior=Vor/R;//A
pf=Po/Vs/Ior;//W
Im=Vs*sqrt(2)/R;//A
Irms=Im*sqrt(k)/2;//A
Iav=k*Im/%pi;//A
printf('\n (a) rms output voltage = %.0f V', Vor)
printf('\n (b) Power output to load = %.1f W', Po)
printf('\n (c) Power input to regulator = %.1f W', Pi)
printf('\n (d) input power factor = %.1f ',pf)
printf('\n (e) average scr current = %.3f A', Iav)
printf('\n     rms scr current = %.3f A', Irms)
