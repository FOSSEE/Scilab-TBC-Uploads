//clc()
//the three phase temperature is first find out, which comes to be 342K, the corresponding Ps1 = 71.18, Ps2 = 30.12
T = [342 343 348 353 363 373];
Ps2 = [30.12 31.06 37.99 47.32 70.11 101.3];
Ps1 = [71.18 72.91 85.31 100.5 135.42 179.14];
P = 101.3;//kPa
for i = 1:4
    y1(i) = 1 - (Ps1(i))/P;
end
for i = 1:6
    y2(i) = 1 - (Ps2(i))/P;
end
plot2d(y2,T);
plot2d(1-y1,T,rect = [0,320,1,380]);
xtitle('Temperature - compositon diagram','x, y (mole fraction of benzene)','Temperature')
