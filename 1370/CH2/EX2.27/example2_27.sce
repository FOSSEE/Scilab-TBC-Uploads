//example2.27
clc
disp("V=250 V, N_0=1000 rpm, I_L0=5 A, R_a=0.2 ohm, R_sh=250 ohm")
i=250/250
disp(i,"I_sh(in A)=(V/R_sh)=")
i=5-1
disp(i,"Therefore, I_a0(in A)=(I_L0)-(I_sh)=")
e=250-(4*0.2)
disp(e,"E_b0(in V)=V-[(I_a0)(R_a)]=")
disp("on load, I_L1=50 A, (psi_1)=(psi_0)-(3% of (psi_0))=0.97(psi_0)")
disp("I_sh remains constant as long as V and R_sh are constant.")
i=50-1
disp(i,"I_a1(in A)=(I_L1)-(I_sh)=")
e=250-(49*0.2)
disp(e,"E_b1(in V)=V-[(I_a1)(R_a)]=")
disp("N is directly proportional to (E_b/psi)   ...Speed equation")
disp("[(N_0)/N1]=[(E_b0)*(psi_1)]/[(E_b1)*(psi_0)]  i.e.  [(1000)/N1]=[(249.2)*(0.97*psi_0)]/[(240.2)*(psi_0)]")
n=(1000*240.2)/(249.2*0.97)
format(9)
disp(n,"Therefore,  N(in rpm)=")
