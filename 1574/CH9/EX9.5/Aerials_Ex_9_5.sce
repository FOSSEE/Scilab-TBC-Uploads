clc
//Chapter9
//Example9.5
//Given
//c
Rr=73// radition resistance
Vrms=10//RMS voltage of the signal
Zin_mod=sqrt((73^2)+(42^2))//absolute input impedance
Irms=Vrms/Zin_mod//RMS current
Pt=(Irms^2)*Rr// Radiated power
mprintf('The radiated power is %f watts',round(100*Pt)/100)
