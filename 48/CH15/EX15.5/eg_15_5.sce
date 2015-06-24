clc;
clear;
//T=1+D+D^3 over GF(2)
//let X0 is the null sequence
//0=X0+DX0+D^3X0 since output of the null sequence is zero
//Adding X0 on both sides we get X0=DX0+D^3X0
nul=[0 0 1];
T=[0 1 0 1];
j=1;
for i=1:max(size(T));
    if(T(i)==1)
        s(1,j)=i-1;
        j=j+1;
    end
end
j=4;
for i=1:7
    nul(1,j)=nul(1,j-s(1))+nul(1,j-s(2));
    nul(1,j)=modulo(nul(1,j),2);
    j=j+1;
end
disp("Null Sequence for input 001 is ");
disp(nul);