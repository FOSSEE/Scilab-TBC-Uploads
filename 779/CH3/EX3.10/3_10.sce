P1 = 100; P2 = 37.9; P3 = 14.4;
V1 = 0.1; V2 = 0.2; V3 = 0.4;
n1 = (log(P1/P2))/(log(V2/V1));
n2 = (log(P2/P3))/(log(V3/V2));
// n1 = n2
W = ((P1*V1)-(P3*V3))/(n1-1);
disp("kJ",W,"Work done by the system is")