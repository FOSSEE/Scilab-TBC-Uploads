//Section-10,Example-1,Page no.-CT.29
//To calculate the maximum work done.
clc;
V_2=50
V_1=5
R=0.08206
T=298
n=10
W=-(n*R*T)*log(V_2/V_1)
disp(W,'Maximum work done in(dm^3atm)')
W1=W*(8.314/0.08206)
disp(W1,'Maximum work done in(J)')
