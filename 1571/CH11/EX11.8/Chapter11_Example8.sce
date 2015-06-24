clc
clear

//INPUT
ti=18;//inside temperature in deg.C
to=4;//outside temperature in deg.C
k1=0.008;//thermal conductivity of stone in cgs unit
k2=0.12;//thermal conductivity of steel in cgs unit
t=3600;//time in sec
t1=25;//thickness of the stone in cm
t2=2;//thickness of the steel in cm
a=10^4;//area of the cottage in sq.cm

//CALCULATIONS
q1=k1*a*(ti-to)*t/(t1);//heat lost by stone per hour in cal
q2=k2*a*(ti-to)*t/t2;//heat lost by steel per hour in cal

//OUTPUT
mprintf('heat lost by stone is %3.2f cal \n heat lost by steel is %3.2f cal',q1,q2)
