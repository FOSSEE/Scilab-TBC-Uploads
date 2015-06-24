clc;
// page no 5
// prob no 1_2_2
//T-type attenuator provide 6-dB insertion loss
//All resistance are in ohm
Ro=50
ILdB=6
IL=10^-(ILdB/20)
//Determination of R 
R=Ro*(1-IL)/(1+IL)
disp('ohm',R,+'The value of resistance R is')
//Determination of R3
R3=(2*Ro*IL)/(1-(0.5)^2)
disp('ohm',R3,+'The value of resistance R3 is')