//Section-10,Example-3,Page no.-CT.30
//To calculate q,W,dl_E,dl_H.
clc;
V_2=2
V_1=1
R=8.314
T=303
n=2
W=-(n*R*T)*log(V_2/V_1)
disp(W,'Maximum work done in(J)')
dl_E=0
dl_H=0
q=dl_E-W
disp(q,'in J')
