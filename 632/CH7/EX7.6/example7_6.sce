//clc()
Ps = 100;//kPa
A1 = 13.8587;//(1 = n-heptane)
A2 = 13.8216;//(2 = n-hexane)
B1 = 2911.32;
B2 = 2697.55;
C1 = 56.51;
C2 = 48.78;
//lnPs = A - B / ( T - C)
T1 = B1 / (-log(Ps)+A1) + C1;
T2 = B2 / (-log(Ps)+A2) + C2;
x2 = 0.25;
