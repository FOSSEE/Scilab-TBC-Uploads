//clear//
//Caption:Entropy, Average length, Variance of Huffman Encoding 
//Example2.4: Illustrating nonuniquess of the Huffman Encoding
// Calculation of (a)Average code-word length 'L' (b)Entropy 'H'
clear;
clc;
P0 = 0.4; //probability of codeword '1'
L0 = 1;   //length of codeword S0
P1 = 0.2; //probability of codeword '01'
L1 = 2;   //length of codeword S1
P2 = 0.2; //probility of codeword '000'
L2 = 3;   //length of codeword S2
P3 = 0.1; //probility of codeword '0010'
L3 = 4;   //length of codeword S3
P4 =0.1; //probility of codeword '0011'
L4 = 4;   //length of codeword S4
L = P0*L0+P1*L1+P2*L2+P3*L3+P4*L4;
H_Ruo = P0*log2(1/P0)+P1*log2(1/P1)+P2*log2(1/P2)+P3*log2(1/P3)+P4*log2(1/P4);
disp('bits',L,'Average code-word Length L')
disp('bits',H_Ruo,'Entropy of Huffman coding result H')
sigma_2 = P0*(L0-L)^2+P1*(L1-L)^2+P2*(L2-L)^2+P3*(L3-L)^2+P4*(L4-L)^2;
disp(sigma_2,'Varinace of Huffman code')
