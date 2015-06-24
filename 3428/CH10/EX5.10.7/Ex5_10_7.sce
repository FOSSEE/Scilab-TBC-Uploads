//Section-5,Example-8,Page no.-D.8
//To calculate rate constant and time taken to complete 80% of the reaction.
clc;
//k=2.303/t log( r_0/r_t)
k=(2.303/50) *log10(1/0.6)
disp(k,'Rate constant(min^-1)')
t=(2.303/k)*(log10(1/0.2))
disp(t,'Time required when the reaction is 80% complete(min)')
