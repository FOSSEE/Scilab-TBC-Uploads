//Section-10,Example-3,Page no.-CT.31
//To calculate q,W,dl_E,dl_H.
clc;
V_2=20
V_1=4
P=1
W=-(P*(V_2-V_1))*(8.314/0.08206)
disp(W,'maximum work done in(J)')
dl_E=0
dl_H=0
q=dl_E-W
disp(q,'in J')
