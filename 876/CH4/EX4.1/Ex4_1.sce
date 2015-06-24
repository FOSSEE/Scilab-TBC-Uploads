//caption:Find value of unknown resistance and fractional uncertainty in its value
//Ex4.1
clc
clear
close
R1=500//resistance of first arm of wheatstone bridge(in ohm)
dR1=0.5//uncertanity of first arm (in ohm)
R2=1000//resistance of arm of wheatstone bridge(in ohm)
dR2=0.5//uncertanity of second arm(in ohm)
R3=600//resistance of third arm of wheatstone bridge(in ohm)
dR3=0.5//uncertanity of third arm(in ohm)
R4=(R2*R3)/R1
disp(R4,'unknown resistance(in ohm)=')
d4=((dR1/R1)^2+(dR2/R2)^2+(dR3/R3)^2)^1/2
dR4=R4*d4
disp(dR4,'fractional uncertainty(in ohm)=')