P1 = 20*1.01325e05;
V1 = 0.04; V2 = 2*V1;
n = 1.45;
P2 = (V1/V2)^n*P1;
W12 = ((P1*V1)-(P2*V2))/(n-1);
W23 = P2*(V2-V1);
Wc = W12-W23;
disp("J",Wc,"Work done in the cycle is") 