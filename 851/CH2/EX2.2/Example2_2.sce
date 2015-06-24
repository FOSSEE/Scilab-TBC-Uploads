//clear//
//caption:Second order Extension of Discrete Memoryless Source
//Example 2.2:Entropy of Discrete Memoryless source
//page 19
clear;
clc;
P0 = 1/4; //probability of source alphabet S0
P1 = 1/4; //probability of source alphabet S1
P2 = 1/2; //probability of source alphabet S2
H_Ruo = P0*log2(1/P0)+P1*log2(1/P1)+P2*log2(1/P2);
disp('Entropy of Discrete Memoryless Source')
disp('bits',H_Ruo)
//Second order Extension of discrete Memoryless source
P_sigma = [P0*P0,P0*P1,P0*P2,P1*P0,P1*P1,P1*P2,P2*P0,P2*P1,P2*P2];
disp('Table 2.1 Alphabet Particulars of Second-order Extension of a Discrete Memoryless Source')
disp('_________________________________________________________________________________')
disp('Sequence of Symbols of ruo2:')
disp('  S0*S0     S0*S1     S0*S2     S1*S0     S1*S1    S1*S2    S2*S0     S2*S1  S2*S2')
disp(P_sigma,'Probability p(sigma), i =0,1.....8')
disp('_________________________________________________________________________________')
disp('   ')
H_Ruo_Square =0;
for i = 1:length(P_sigma)
  H_Ruo_Square = H_Ruo_Square+P_sigma(i)*log2(1/P_sigma(i));
end
disp('bits', H_Ruo_Square,'H(Ruo_Square)=')
disp('H(Ruo_Square) = 2*H(Ruo)')
