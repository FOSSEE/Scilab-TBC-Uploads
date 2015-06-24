//Exa2.15
clc;
clear;
close;
//given data
alpha0=0.0038;// in ohm/ohm/degree C
t1=20; //in degree C
alpha20=1/(1/alpha0+t1);
R1=400;//in ohm
//Formula R2=R1*[1+alpha20*(t2-t1)]
R2=R1*[1+alpha20*(80-20)];
disp("Resistance of wire at 80 degree C si : "+string(R2)+" ohm")