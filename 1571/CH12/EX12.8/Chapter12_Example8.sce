clc
clear

//INPUT
t1=600;//temperature of the black body in K
t0=300;//temperature of the surroundings in K
d=6;//deflections in galvanometer
d1=400;//deflection in divisions

//CALCULATIONS
dt=(d1/d)*(t1^4-t0^4);//change of temperature
t2=(dt+t0^4)^(1/4);//end temperature in K

//OUTPUT
mprintf('end temperature of the temperature is %3.2f K',t2)
