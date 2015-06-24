clc
m=4; //kg
T1=400; //K
T2=500; //K

dS=integrate('m*(0.48+0.0096*T)/T', 'T', T1,T2);
disp("dS=")
disp(dS)
disp("kJ")