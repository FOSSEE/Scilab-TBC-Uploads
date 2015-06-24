//page no 687
// prob no 15.1
// Here we have given six messages. For 4-ary Huffman code, we need to add one dummy variable to satisfy the required condition of r+k(r-1) messages.
//probabilities are given as p(1)=0.3; p(2)=0.25; p(3)=0.15; p(4)=0.12; p(5)=0.1; p(6)=0.08; p(7)=0.

//The length L of this code is calculated as
clc;
  
  n=input("enter the length of probability vector p, n= ");
p=[.3 .25 .15 .12 .1 .08 0];// enter probabilities in descending order
l=[1 1 1 2 2 2 2];// code length of individual message according to order
L=0;
for i=1:n
  L=L+(p(i)*l(i));
end
disp(+'4-ary digits',L,"Length = ");

// Entropy of source is calculated as
H=0;
for i=1:n-1//since the value of log(1/0) for the last entry is infinite which when multiply by 0 gives result as 0
  H=H+(p(i)*log(1/p(i)));
end
H1=H/log(4)
disp(+'4-ary units',H1,"Entropy of source is, H = ");

// Efficiency of code is given as 
N=H1/L;
disp(N,"Efficiency of code, N = ");
