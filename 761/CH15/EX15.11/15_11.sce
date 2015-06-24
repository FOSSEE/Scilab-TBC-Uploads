clc;
// page no 545
// prob no 15.11
// An automobile travels at 60km/hr
v=60*10^3/(60*60);//conversion of car's speedto m/s
c=3*10^8;//speed of light
//part a) calculation of time between fades if car uses a cell phone at 800*10^6Hz
f=800*10^6;
T=c/(2*f*v);
disp('sec',T,'The fading period is');
//part b) calculation of time between fades if car uses a PCS phone at 1900*10^6Hz
f=1900*10^6;
T=c/(2*f*v);
disp('sec',T,'The fading period is');
// Note that the rapidity of the fading increases with both the frequency of the transmissions and the speed of the vehicle