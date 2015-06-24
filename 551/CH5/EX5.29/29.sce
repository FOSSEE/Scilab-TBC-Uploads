clc
V1=0.3; //m^3
p1=4*10^5; //N/m^2
V2=0.08; //m^3
n=1.25; 
p2=p1*(V1/V2)^n;

disp("(i) Change in enthalpy")
dH=n*(p2*V2-p1*V1)/(n-1)/10^3;
disp("dH=")
disp(dH)
disp("kJ")


disp("(ii) Change in internal energy")
dU=dH-(p2*V2 - p1*V1)/10^3;
disp("dU=")
disp(dU)
disp("kJ")


disp("(iii) Change in entropy")
dS=0;
disp("dS")
disp(dS)


disp("(iv)Heat transfer")
Q=0;
disp("Q=")
disp(Q)


disp("(v) Work transfer")
W=Q-dU;
disp("W=")
disp(W)
disp("kJ")