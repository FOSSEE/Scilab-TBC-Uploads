clc;
//page no 490
//prob no. 14.13
Zo=50;//line impedance in ohm
f=100*10^6;//operating freq
vf=0.7;//velocity factor
L=6;//length in m
c=3*10^8;//velo of light
ZL=50+%i*50;//load impedance in ohm
// we have to calculate length in degree,so for this first find wl
wl=vf*c/f;//wavength in m
ang=360*L/wl;
// now from the graph input impedance is 19.36+%i5.44;
Zi=19.36+%i*5.44;
disp('ohm',Zi,'Input impedance is');