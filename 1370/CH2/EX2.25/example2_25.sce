//example2.26
clc
disp("For a d.c. generator,")
disp("E_g=(psi*N*P*Z)/(60*A)    i.e    E_g is directly proportional to (psi*N)      ... (P*Z)/(60*A) is constant")
disp("N1=1000 rpm, (psi_1)=0.02 Wb, (E_g1)-200 V, N2=1100 rpm, (psi_2)=0.019 Wb")
disp("[(E_g1)/(E_g2)]=[(N1*psi_1)/(N2*psi_2)]  i.e  [(200)/(E_g2)]=[(1000*0.02)/(1100*0.019)]")
g=(200*1100*0.019)/(1000*0.02)
disp(g,"Therefore,  E_g2(in V)=")
