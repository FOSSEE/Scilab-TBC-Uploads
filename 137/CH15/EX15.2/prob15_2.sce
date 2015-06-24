// Page no 688
// Example no. 15.2
// N=1
//Here we have given two messages with probabilities m1=0.8 and m2=0.2 . Therefore, Huffman code for the source is simply 0 and 1.

//The length L of this code is calculated as
clear;
clc;
close; 
N=1;
p=[.8 .2];//enter probabilities in descending order
n=length(p)
l=[1 1];//code length of individual message according to order
L=0;
for i=1:n
  L=L+(p(i)*l(i));
end
disp(L,"Length = ");

// Entropy of source is calculated as
H=0;
for i=1:n
  H=H+(p(i)*log2(1/p(i)));
end
disp(+'bit',H,"Entropy of source is, H = ");

// Efficiency of code is given as 
N1=H/L;
disp(N1,"Efficiency of code, N = ");

//for N=2
//There are four (2^N) combinations and their probabilities obtained by multiplying individuals probability.
//The length L of this code is calculated as
N=2;
p=[0.64 0.16 0.16 0.04];//enter probabilities in descending order
n=length(p);
l=[1 2 3 3];//code length of individual message according to order
L1=0;
for i=1:n
  L1=L1+(p(i)*l(i));
end
L=L1/N;// word length per message
disp(L,"Length = ");

// Efficiency of code is given as 
N2=H/L;
disp(N2,"Efficiency of code, N = ");


//for N=3
//There are eight (2^N)combinations and their probabilities obtained by multiplying individuals probability
//The length L of this code is calculated as
N=3;
p=[.512 .128 .128 .128 .032 .032 .032 .008];//enter probabilities in descending order
n=length(p);
l=[1 3 3 3 5 5 5 5];//code length of individual message according to order
L1=0;
for i=1:n
  L1=L1+(p(i)*l(i));
end
L=L1/N;// word length per message
disp(L,"Length = ");

// Efficiency of code is given as 
N3=H/L;
disp(N3,"Efficiency of code, N = ");
