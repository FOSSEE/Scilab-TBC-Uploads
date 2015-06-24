//Section-10,Example-2,Page no.-CT.31
//To calculate dl_E for the given process.
clc;
P=4
V_2=25
V_1=5
W=-(P*(V_2-V_1))*(8.314/0.08206)
q=500
dl_E=q+W
disp(dl_E,'Change in internal energy(J)')
