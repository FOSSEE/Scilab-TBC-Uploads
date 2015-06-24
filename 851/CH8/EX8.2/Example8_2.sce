//clear//
//Caption:Hamming Codes
//Example8.2:Hamming codes
clear;
clc;
k = 4; //message bits length
n = 7; //block length
m = n-k;//Number of parity bits
I = eye(k,k); //identity matrix
disp(I,'identity matrix Ik')
P =[1,1,0;0,1,1;1,1,1;1,0,1];//coefficient matrix
disp(P,'coefficient matrix P')
G = [P I]; //generator matrix
disp(G,'generator matrix G')
H = [eye(k-1,k-1) P'];//parity check matrix
disp(H,'parity chechk matrix H')
//message bits
m = [0,0,0,0;0,0,0,1;0,0,1,0;0,0,1,1;0,1,0,0;0,1,0,1;0,1,1,0;0,1,1,1;1,0,0,0;1,0,0,1;1,0,1,0;1,0,1,1;1,1,0,0;1,1,0,1;1,1,1,0;1,1,1,1];
//
C = m*G;
C = modulo(C,2);
disp(C,'Code words of (7,4) Hamming code')
