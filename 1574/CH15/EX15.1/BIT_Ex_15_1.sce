clc
//Chapter15
//Example15.1, page no 533
//Given
P_A=0.5// probability of producing symbol 'A'
P_B=0.25// probability of producing symbol 'B'
P_C=0.25// probability of producing symbol 'C'
H=P_A*log2(1/P_A)+P_B*log2(1/P_B)+P_C*log2(1/P_C)// the source entropy
mprintf('The source entropy is: %f bits/symbol',H)

