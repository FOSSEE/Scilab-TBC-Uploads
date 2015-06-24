//Ex1.20
clc
EGo = 1.1 //energy band gap
micro_n = 0.13 //electron mobility
micro_p = 0.05 //hole mobility
N = 3*10^25 //atom concentration
K = 1.38*10^-23 //Boltzmann constant
T = 300 //room temperature
e=1.6*10^-19//electron charge
disp("EGo = "+string(EGo)+"eV = "+string(EGo*e)+"J")
disp("micro_n = "+string(micro_n)+" m.sq/V-s")
disp("micro_p = "+string(micro_p)+"m.sq/V-s")
disp("N = "+string(N)+" /m.cube")
disp("T = "+string(T)+"degree_K")
disp("K = "+string(K)+"J/K")
disp("ni = N*exp(-(EGo/(2*T*K))) = "+string(N*exp(-(EGo*e/(2*T*K))))+" /m.cube") //intrinsic concentration
ni = N*exp(-(EGo*e/(2*T*K)))
disp("sigma = ni*e(micro_n+micro_p) = "+string(ni*e*(micro_n+micro_p))+"mho/m") //conductivity
