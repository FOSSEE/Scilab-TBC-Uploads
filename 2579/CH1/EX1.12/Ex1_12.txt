//Ex:1.12
clc;
clear;
close;
// dl=y/50
// then dl/y=((y/50)/y=1/50)
dl_y=1/50;// the value of dl/y
Rr=80*%pi^2*(dl_y^2);// Radiation resistance in ohm
printf("The radiation resistance = %f ohm", Rr);