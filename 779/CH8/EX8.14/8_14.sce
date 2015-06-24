cp = 1.005; T2 = 433; T1 = 298;
T0 = 298; R = 0.287; P2 = 8; P1 = 1;
Q = -100; m = 1;
W = Q + m*cp*(T1-T2);
AF = cp*(T2-T1)-T0*((cp*log(T2/T1))-(R*log(P2/P1))) ; // AF = af2-af1
e = AF/-W; // efficiency 
disp("kW",W,"The power input is")
disp(e,"The second law efficiency of the compressor is")
