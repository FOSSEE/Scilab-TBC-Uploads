//clc()
k = 0.49;//cal/(s.cm.C)
T1 = 33.29755;//C
T2 = 75;//C
T3 = 63.21152;//C
T4 = 0;//C
qx = -k * (T1 - T2) / (2*10);
qy = -k * (T3 - T4) / (2*10);
disp(qx,"qx = ")
disp(qy,"qy = ")
q = (qx^2 + qy^2)^0.5;
t = (atan(qy/qx));
r = t * 180/(%pi);
disp(r,"Thus, the flux is direced at the angle")
