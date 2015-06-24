// Example 8.5;//Compare OPTICAL POWER 
clc;
clear;
close;
a=20;//core radius in micro meter
Bo=100;//in W per cm2 sr
rs=35;// radiating radius in micro meter
rs1=50;//
NA=0.2;//numerical aperture
Ps1= (%pi^2*(rs*10^-6)^2*Bo*NA^2)*10^7;
Ps2= (((rs/rs1)^2)*Ps1);//
disp(Ps1,"POWER when area is large in micro watt")
disp(Ps2,"power wHEN AREA IS SMALL in milli watt")
