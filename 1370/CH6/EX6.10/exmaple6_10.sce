//example6.10
clc
disp("R_m=2000 ohm, V_m=100 V, N=10000")
i=100/2000
disp(i,"Therefore, I_m(in A)=(V_m)/(R_m)=100/2000=")
i=0.05*10000
disp(i,"Therefore, AT for full scale deflection = (I_m)*N=0.05*10000")
disp("For I=20 A, AT=I*N''")
disp("Therefore, 500=20*N''")
n=500/20
disp(n,"Therefore, N''=")
