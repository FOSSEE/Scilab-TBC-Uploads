//example2.10
clc
disp("P=4,  A=P=4")
disp("Running light it is on no load.")
disp("Therefore,    N_0=1000 rpm    Z=540   and  psi=25*10^-3 Wb")
e=(100*540)/240
disp(e,"Therefore,  E_b0(in V)=(psi*P*N*Z)/(60*A)=")
disp("i)Induced emf,    E_b0=225 V")
disp("ii) From voltage equation,    V=(E_b)+[(I_a)*(R_a)]")
disp("V=(E_b0)+[(I_a0)*(R_a)]")
disp("230=225+[(I_a0)*0.8]")
i=5/0.8
disp(i,"I_a0(in A)=")
disp("iii) On no load,power developed is fully the power required to overcome stray losses.")
e=225*6.25
format(8)
disp(e,"Stray losses=(E_b0)*(I_a0)=")
t=(1406.25*60)/(2*%pi*1000)
format(7)
disp(t,"T_f(in N-m)=[(E_b0)*(I_a0)]/(w_0)=")
