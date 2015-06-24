clc
m=6; //kg
T1=25; //0C
T2=125; //0C

disp("(i) Heat transferred")
Q=integrate('m*(0.4+0.004*T)','T',T1,T2);
disp("heat tranferred=")
disp(Q)
disp("kJ")

disp("(ii) Mean specific heat of the gas")
c_n=Q/m/(T2-T1);
disp("Mean specific heat=")
disp(c_n)
disp("kJ/kg.0C")