//to sketch speed the speed-torque characteristicsof the series motor connectedto mains by calculating speed and torque values at diff values of armature current

clc;
Ise=[75 100 200 300 400];
V=250;
Ra=.08;
function [Ea]=Eaa(Ise)
Ea=V-Ra*Ise;    
endfunction

Eav=[121.5 155 250 283 292];
n=1200;
function[nn]=speed(Ea,Eav)
nn=n*Ea/Eav;
    endfunction
function [T]=torque(nn,Ea,Ise)
    T=(60*Ea*Ise/(2*%pi*nn));
endfunction

Ise=75;
Ea=Eaa(Ise);
Eav=121.5;
nn1=speed(Ea,Eav);
T1=torque(nn1,Ea,Ise);

Ise=100;
Ea=Eaa(Ise);
Eav=155;
nn2=speed(Ea,Eav);
T2=torque(nn2,Ea,Ise);

Ise=200;
Ea=Eaa(Ise);
Eav=250;
nn3=speed(Ea,Eav);
T3=torque(nn3,Ea,Ise);

Ise=300;
Ea=Eaa(Ise);
Eav=283;
nn4=speed(Ea,Eav);
T4=torque(nn4,Ea,Ise);

Ise=400;
Ea=Eaa(Ise);
Eav=292;
nn5=speed(Ea,Eav);
T5=torque(nn5,Ea,Ise);

nn=[nn1 nn2 nn3 nn4 nn5];disp(nn,'speed(rpm)');
T=[T1 T2 T3 T4 T5];disp(T,'torque(Nm)');

plot(T,nn);
xlabel('T(Nm)');
ylabel('n(rpm)');