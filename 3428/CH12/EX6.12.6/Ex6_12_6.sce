//Section-6,Example-1,Page no.-P.38
//To find the change in chemical potential of the substance in the given condition.
clc;
R=8.314
T=298
P=0.5
P_0=1
mu_1=R*T*log(P/P_0)         //mu_1=mu-mu_0
disp(mu_1,'Change in chemical potential of the substance(J/mol)')
