clc;
//page no 545
//prob no. 15.3.1
// VHF mobile radio system is given 
Pt=100;//transmitted power
f=150;//freq used in MHz
c = 3*10^8;
d1=20;//height of transmitting antenna in m
Gt=1.64;//transmitting antenna gain
ht=2;//height of receiving antenna in m
d2=40;// distance in km
wl=c/(f*10^6);
E0=sqrt(30*Pt*Gt)
// Field strength at a receiving antenna is
ER=(E0*4*%pi*d1*ht)/(wl*(d2*10^3)^2);
disp('uV/m',ER*10^6,'Field strength at a receiving antenna is');