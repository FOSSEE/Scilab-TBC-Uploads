clc
//Chapter2
//Ex_2.11
//Given
u=1.58*10^6 //in m/s
N=8.5*10^28 //m^-3
e=1.6*10^-19 // in coulombs
me=9.1*10^-31 //in Kg
N_I=0.01*N
l_I=N_I^(-1/3)
t_I=l_I/u
p=me/(e^2*N*t_I)
disp(p," worst case resistivity in ohm*m")
//slight change in answer due to computational method
