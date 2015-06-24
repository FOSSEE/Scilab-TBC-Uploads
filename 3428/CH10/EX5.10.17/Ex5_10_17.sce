//Section-5,Example-4,Page no.-D.20
//To calculate temperature coefficient for the reaction.
clc;
t_h=2*60
k=0.693/t_h
A=5000*10^10
E_a=10^5
R=8.314
T=E_a/(2.303*R*(log10(A)-log10(k)))
disp(T,'Temperature coefficient for the reaction(K)')
