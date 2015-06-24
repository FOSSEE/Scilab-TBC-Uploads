//Section-6,Example-1,Page no.-P.38
//To find the partial vapour pressure of benzene in the solution.
clc;
n_B=1000/78
n_n=1.5
p_Bbar=94.6
x_B=n_B/(n_B+n_n)
p_B=x_B*p_Bbar
disp(p_B,'Partial vapour pressure of benzene(Torr)')
