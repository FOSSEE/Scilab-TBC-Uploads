////Ex 8.1
clc;
clear;
close;
format('v',9);
VCC=6;//V
VEE=6;//V
RT=4;//kohm
CT=330;//pF
C=240;//pF
fo=0.3/(RT*1000*CT*10^-12)/1000;//kHz
disp(fo,"Free running frequency(kHz)");
Vplus=(VCC-(-VEE))/2;//V
deltafL=8*fo/Vplus;//kHz
disp(deltafL,"Lock Range(+ve & -ve in kHz)");
//For LM 565
R=3.6;//kohm
deltafC=sqrt(deltafL*1000/(2*%pi*R*1000*C*10^-12))/1000;//kHz
 disp(deltafC,"Capture Range(+ve & -ve in kHz)");
deltafP=2*deltafC/2;//kHz
 disp(deltafP,"Pull-in Range(kHz)");
