//clc()
T = [273 293 313 323 333 353 373];
Ps = [0.61 2.33 7.37 12.34 19.90 47.35 101.3];
plot2d('ll',T,Ps,rect=[250,0.1,380,195]);
P = get("hdl");
xtitle('Construction of cox chart','Temperature, K','Pressure, kPa');
T1 = [273 353]
Ps1 = [8.52 194.9]
plot2d('ll',T1,Ps1);