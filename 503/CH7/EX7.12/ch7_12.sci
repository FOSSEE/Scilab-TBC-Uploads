//to calculate no of turns reqd on each interpole

clc;
P=25000;
V=440;
I_a=P/V;
Z=846;
A=2;
P=4;
B_i=.5;
u_o=4*%pi*10^-7;
l_gi=.003;
AT_i=((I_a*Z)/(2*A*P))+(B_i*l_gi)/u_o;
N_i=ceil(AT_i/I_a);
disp(N_i,'no of turns');