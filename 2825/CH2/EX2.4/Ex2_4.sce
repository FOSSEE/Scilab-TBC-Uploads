//Ex2_4 Pg-88
clc
clear

disp("(n_i)^2 = n*p = n_p*N_a")
ni=2.5*10^19 //density of electron hole per m^3
Na=1.1*10^20 //acceptor density in atoms/m^3
np=(ni^2)/Na //number of holes 
N=np/ni //The ratio of np/ni
printf("\n The ratio of n_p/n_i = %.2f",N)
