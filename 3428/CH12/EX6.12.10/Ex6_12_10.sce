//Section-6,Example-2,Page no.-P.42
//To calculate the minimum partial pressure of methane to achieve the following condition.
clc;
n_M=(21*10^-3)/16
n_B=100/78
x_M=n_M/(n_M+n_B)
K_M=4.27*10^5
p_M=x_M*K_M
disp(p_M,'Required partial pressure(Torr)')
