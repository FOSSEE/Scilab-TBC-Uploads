//gain parameter ,output power and Be
//given
clc
Vdc=2.5d+3//votage  in volts
Idc=25d-3//current in ampere
Z0=10//resistance in ohm
L=40//CIRCUIT LENGTH
f=9.5d+9//in Hz
G=((Idc*Z0)/(4*Vdc))^(1/3)//the gain parameter
Ap=-9.54+47.3*L*G//OUTPUT power in dB
w=2*%pi*f
Ve=0.593d+6*sqrt(Vdc)
Be=w/Ve//in rad/m
Be=round(Be/10)*10///rounding off decimals
Ap=round(Ap*10)/10////rounding off decimals
G=round(G*10000)/10000////rounding off decimals
disp(Be,Ap,G,'the  Be,the output power and the gain parameter')//dB,Rad/m
