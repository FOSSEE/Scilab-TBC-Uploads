clc
V1=0.25; //m^3
p1=500; //kPa
p2=100; //kPa
V2=V1*(p1/p2)^(1/1.25)
n=1.25
dU=3.64*(p2*V2 - p1*V1)


disp("(i) If the expansion is quasi-static")
W=(p1*V1-p2*V2)/(n-1);
Q=dU+W
disp("Heat transfered=")
disp(Q)
disp("kJ")


disp("(ii) In another process")
Q=32; //kJ
W=Q-dU;
disp("Work done=")
disp(W)
disp("kJ")


disp("(iii)The difference")
disp("(iii) The work in (ii) is not equal to ∫ p dV since the process is not quasi-static.")