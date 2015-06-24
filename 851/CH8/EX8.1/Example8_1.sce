//clear//
//Caption:Repetition Codes
//Example8.1:Repetition Codes
clear;
clc;
n =5; //block of identical 'n' bits
k =1; //one bit
m = 1;// bit value = 1
I = eye(n-k,n-k);//Identity matrix
P = ones(1,n-k);//coefficient matrix
H = [I P'];//parity-check matrix
G = [P 1];//generator matrix 
x = m.*G; //code word
disp(G,'generator matrix');
disp(H,'parity-check matrix');
disp(x,'code word for binary one input');
