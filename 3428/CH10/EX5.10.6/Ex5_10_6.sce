//Section-5,Example-7,Page no.-D.7
//To calculate rate constant and time taken to complete 80% of the reaction.
clc;
t_h=15
k=0.693/t_h
disp(k,'Rate constant for first order reaction(min^-1)')
//t=((2.303/k)*log(R_0/R_t))
t=(2.303/0.0462)*log10(1/0.2)
disp(t,'Time taken to complete 80% of the reaction(min)')
