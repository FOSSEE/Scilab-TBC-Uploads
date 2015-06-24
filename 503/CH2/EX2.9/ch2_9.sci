// calculation of hysterisis and eddy current losses

clc;
P1=1500;
f1=50;
P2=3000;
f2=75;
A=[1 50;1 75];            //P/f=A+B*f
B=[30;40];
v=A\B;

disp('at 50Hz');
P_h=v(1)*f1;disp(P_h,'hysterisis loss(W)');
P_e=v(2)*f1^2;disp(P_e,'eddy current loss(W)');

disp('at 75Hz');
P_h=v(1)*f2;disp(P_h,'hysterisis loss(W)');
P_e=v(2)*f2^2;disp(P_e,'eddy current loss(W)');
