clear;
clc;
format('v',6);
P=[0,2,4];
Q=[-3,1,5];
origin=[0,0,0];
rp=P-origin;
disp(rp,'Position Vector of P is :')
rpq=Q-P;
disp(rpq,'Position Vector from P to Q is :')
det_rpq=(rpq(1,1)^2+rpq(1,2)^2+rpq(1,3)^2)^0.5;
disp(det_rpq,'distance between P and Q is :')
A=10*rpq/det_rpq;
disp([A;-A],'Vectors parallel to PQ with magnitude of 10 :')