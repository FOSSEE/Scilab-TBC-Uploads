//clear//
//Caption:Entropy of Binary Memoryless source
//Example 2.1: Entropy of Binary Memoryless Source
//page 18
clear;
close;
clc;
Po = 0:0.01:1;
H_Po = zeros(1,length(Po));
for i = 2:length(Po)-1
  H_Po(i) = -Po(i)*log2(Po(i))-(1-Po(i))*log2(1-Po(i));
end
//plot
plot2d(Po,H_Po)
xlabel('Symbol Probability, Po')
ylabel('H(Po)')
title('Entropy function H(Po)')
plot2d3('gnn',0.5,1)
