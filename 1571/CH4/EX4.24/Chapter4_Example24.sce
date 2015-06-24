clc
clear

//INPUT
t2=296.4;//temperature of the first plate in K
t1=304.7;//temperature of the second plate in K
f=1.6*10^-2;//force repelled cold is dynes/sq.cm

//CALCULATIONS
p=(4*f*t2/(t1-t2));//pressure of the gas in dynes/sq.cm

//OUTPUT
mprintf('the pressure of the gas is %3.3f dynes/sq.cm',p)
