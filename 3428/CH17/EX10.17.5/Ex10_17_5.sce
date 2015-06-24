//Section-10,Example-4,Page no.-CT.30
//To calculate the final volume.
clc;
dl_E=0
q=10000*4.184
V_1=22.4
R=8.314
T=273
n=10
W=dl_E-q
V_2=V_1*(%e^(W/(-n*R*T)))
disp(V_2,'Final volume in(dm^3)')


