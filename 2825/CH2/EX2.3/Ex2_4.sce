//Ex2_4 Pg-88
clc
disp("(n_i)^2 = n*p = n_p*N_a")
ni=2.5*10^19 //density of electron hole
Na=1.1*10^20 //acceptor density
np=(ni^2)/Na
N=np/ni 
printf("\n The ratio of n_p/n_i = %.4f",N)
