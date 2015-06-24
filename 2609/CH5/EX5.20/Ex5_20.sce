//Ex 5.20
clc;
clear;
close;
format('v',5);
f=50;//Hz
T=1/f;//s(Period)
Ci=0.05;//micro F
RiCi=0.01*T;//Given
Ri=RiCi/(Ci*10^-6)/1000;//kohm
disp(Ri,"Resistance Ri(kohm)");
//Vout=-.002*dVin/dt given
//On comparing with Vout=-Rf*Ci*dVin/dt
RfCi=0.002;//on comparing
Rf=RfCi/(Ci*10^-6)/1000;//kohm
disp(Rf,"Resistance Rf(kohm)");
Cf=Ri*Ci/Rf;//micro F
format('v',6);
disp(Cf,"Capacitance Cf(micro F)");
