// Exa 11.7
// To find power value to be set as a first approximation ans time required by mobile station to make changes as directed by base station.

clc;
clear all;

Prm=-97;//the signal strength from the base stations in  dBm

//The constant ( K ) is the part of the broadcast message that is sent to the mobile by the base station on the paging channel.
K=-73; //dB
P2=18; //power as directed by BS (dBm)

//solution
Ptm=K-Prm;
printf('The mobile transmitter power be set as a first approximation of %d dBm \n ',Ptm);
Pwr_Redu=Ptm-P2;//power reduction
printf('Power reduction = %d dBm \n ',Pwr_Redu);
disp("Therefore, mobile requires 6 decrements each at 1.25 ms (1/800 sec) ");
Time=6*1.25;
printf(' Time required by mobile station to make changes as directed by base station is %.1f msec\n',Time);
 
