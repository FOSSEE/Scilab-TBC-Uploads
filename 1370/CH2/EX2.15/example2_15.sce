//example2.15
clc
disp("Consider the generator as shown in fig 2.61")
disp("P=4,  A=P=4,  N=750 rpm,  psi=30 mWb=30*10^-3,    Z=720")
n=(4*750*720*30*10^-3)/(240)
disp(n,"E(in V)=(psi*P*N*Z)/(60*A)=")
disp("E=(V_t)+[(I_a)*(R*a)]")
disp("(V_t)=(I_L)*(R_L)     i.e.    I_L=(V_t)/(R_L)")
disp("And,  I_sh=(V_t)/(R_sh)")
disp("I_a=(I_L)+(I_sh)=[(V_t)/(R_L)]+[(V_t)/(R_sh)]")
disp("Substituting in voltage equation,")
disp("E=(V_t)+[(V_t)/(R_L)+(V_t)/(R_sh)]*(R_a)")
disp("Therefore,    270=(V_t)+[(V_t)/(15)+(V_t)/(200)]*(0.4)")
disp("270=1.0286(V_t)")
v=270/1.0286
format(9)
disp(v,"V_t(in V)=")
