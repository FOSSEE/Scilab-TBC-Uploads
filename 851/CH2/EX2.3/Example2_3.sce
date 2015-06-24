//clear//
//Caption:Entropy, Average length, Variance of Huffman Encoding 
//Example 2.3: Huffman Encoding: Calculation of
// (a)Average code-word length 'L'
//(b)Entropy 'H'
clear;
clc;
P0 = 0.4; //probability of codeword '00'
L0 = 2;   //length of codeword S0
P1 = 0.2; //probability of codeword '10'
L1 = 2;   //length of codeword S1
P2 = 0.2; //probility of codeword '11'
L2 = 2;   //length of codeword S2
P3 = 0.1; //probility of codeword '010'
L3 = 3;   //length of codeword S3
P4 =0.1; //probility of codeword '011'
L4 = 3;   //length of codeword S4
L = P0*L0+P1*L1+P2*L2+P3*L3+P4*L4;
H_Ruo = P0*log2(1/P0)+P1*log2(1/P1)+P2*log2(1/P2)+P3*log2(1/P3)+P4*log2(1/P4);
disp('bits',L,'Average code-word Length L')
disp('bits',H_Ruo,'Entropy of Huffman coding result H')
disp('percent',((L-H_Ruo)/H_Ruo)*100,'Average code-word length L exceeds the entropy H(Ruo) by only')
sigma_1 = P0*(L0-L)^2+P1*(L1-L)^2+P2*(L2-L)^2+P3*(L3-L)^2+P4*(L4-L)^2;
disp(sigma_1,'Varinace of Huffman code')
