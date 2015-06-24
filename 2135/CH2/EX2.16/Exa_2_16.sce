//Exa 2.16
clc;
clear;
close;
format('v',7);

//Given Data : 
p=105;//Kpa
p1=105;//Kpa
p2=105;//Kpa
V1=0.25;//m^3
V2=0.45;//m^3
T1=10+273;//kelvin
T2=240+273;//kelvin

Q=integrate('0.4+18/(T+40)','T',T1,T2);//KJ
disp(Q,"Heat Transfer in KJ : ");
W=p*(V2-V1);//KJ
disp(W,"Work Transfer in KJ : ");
deltaU=Q-W;//KJ
disp(deltaU,"Change in internal energy in KJ L ; ");
deltaH=Q;//KJ
disp(deltaH,"Change in enthalpy in KJ :");
