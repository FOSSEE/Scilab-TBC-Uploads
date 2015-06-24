//Section-5,Example-5,Page no.-D.20
//To find the number of times the rate of reaction increases at 20degreee celcius for the given reaction.
clc;
R=8.314
T=293
E_a2=75*10^3
E_a1=50*10^3
K=10^((E_a2-E_a1)/(2.303*R*T))
//K=k_1/k_2=antilog((E_a2-E_a1)/(2.303*R*T))
disp(K,'Ratio of k_1/k_2') 

