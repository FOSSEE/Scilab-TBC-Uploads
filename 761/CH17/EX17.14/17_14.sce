clc;
//page no 662
//prob no. 17.14
v=60;//speed of vehicle moving towards radar in mph
c=3*10^8;//velo of light in m/s
f=10^10;// operating frequency in Hz
// conversion of speed from mph to km/hr
v1=60*1.6;
// conversion of speed from km/hr to m/s
v2=v1*10^3/3600;
// Now the Doppler shift is found as
fd=2*v2*f/c;
disp('Hz',fd,'The Doppler shift is ');