//Ex:5.21
clc;
clear;
close;
y=0.85;// operating wavelength in um
md=2.75;// material dispersion in ns
wd=0.45;// waveguide dispersion in ns
wt=0.50;// width of transmitted pulse in ns
td=sqrt(md^2+wd^2);// total dispersion in ns
dt=wt+td;// received pulse width in ns
br=1/(5*dt*10^-9);// max bit rate bit/sec
Br=br/10^6;// max bit rate in mbps
printf("The received pulse width =%f ns", dt);
printf("\n The  max bit rate =%f mbps", Br);