clc
V1=0.05; //m^3
p1=1*10^5; //Pa
T1=280; //K
p2=5*10^5; //Pa

disp("(i) Change in entropy")
R0=8.314;
M=28;
R=R0/M;
m=p1*V1/R/T1/1000;


dS=m*R*log(p1/p2);
disp("dS=")
disp(dS)
disp("kJ/K")

disp("(ii)Work done")
Q=T1*dS;
disp("Q=")
disp(Q)
disp("kJ")