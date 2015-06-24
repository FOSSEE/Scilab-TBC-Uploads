clc;
// page no 7
// prob no 1_2_3
//pi-attenuator with 6 dB insertion loss
//output resistance is Ro=50 ohm
//All resistance are in ohm
Ro=50
ILdB=6
IL=10^-(ILdB/20)
//Determination of RA and RB
RA=Ro*(1+IL)/(1-IL);
disp('ohm',RA,+'The value of resistance RA and RB is')
//Determination of RC
RC=Ro*(1-(IL)^2)/(2*IL);
disp('ohm',RC,+'The value of resistance RC is')