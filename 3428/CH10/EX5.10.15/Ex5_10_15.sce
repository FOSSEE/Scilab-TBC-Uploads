//Section-5,Example-2,Page no.-D.19
//To calculate the required temperature. 
clc;
k_2=10000
k_1=5000
K=log10(k_2/k_1)
E_a=6*10^4
R=8.314
T_2=-1/(((K*2.303*R)/E_a)-(1/298))
disp(T_2,'Required temperature(K)')


