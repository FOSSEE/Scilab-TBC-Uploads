clear 
clc
XA=0.70;
YA=0.35;
P=600;//in torr
PA=(YA*P)/XA;//vapour pressure of pure A
printf('PA=%.1d torr',PA)
PB=((1-YA)*P)/(1-XA);//vapour pressure of pure B
printf('\nPB=%.1f torr',PB)

//page 145
