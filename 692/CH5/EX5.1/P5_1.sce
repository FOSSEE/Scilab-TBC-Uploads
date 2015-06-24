//EXAMPLE 5.1
//DETERMINE DFT OF GIVEN SEQUENCE
clc;
clear;
N = input("length of sequence  =  ");
x = [1,zeros(1,N-1)];
disp(x,'The sequence is,x = ');
X = dft(x,0);
disp(X,'DFT of the sequence is X = ');
m = input("value of some intemediate (mth) point  =  ");
y = [zeros(1,m-1),1,zeros(1,N-m)];
Y = dft(y,0);
disp(Y,'DFT of the sequence is Y = ');


