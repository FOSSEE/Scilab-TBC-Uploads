clc
vr=20*1.852*(1000/3600);..//target radial speed
f=10^9;..//base frequency
c=3*(10^8);
lamda=(c/f);
fd=2*(vr/lamda);..//doppler speed
disp("Hz",fd,"Doppler Shift is")
