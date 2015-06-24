clc
//Chapter15
//Example15.2, page no 535
//Given
P_A=0.5,P_B=0.25,P_C=1/32,P_D=1/8,P_E=1/16,P_F=1/32// probabilities of producing respective symbol
H=(P_A*log2(1/P_A))+(P_B*log2(1/P_B))+(P_C*log2(1/P_C))+(P_D*log2(1/P_D))+(P_E*log2(1/P_E))+(P_F*log2(1/P_F))// Source Entropy
n=6,T=1
mprintf('The source entropy is: %f bits/symbol',round(1000*H)/1000)


