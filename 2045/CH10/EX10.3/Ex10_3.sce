//pagenumber 468 example 3
clear
volgain=2000;//voltage gain
outpower=20;//watts
inpsig=10*10^-3;//volts
fedbac=40;//decibel
fedgai=volgain/100;
outvol=volgain*inpsig;//output voltage
inpvol=outvol/fedgai;//required input
//10 second harmonic distortion
distor=(10/100);
disp("required input   =   "+string((inpvol))+"volt");



disp("harmonic distortion   =   "+string((distor)));



