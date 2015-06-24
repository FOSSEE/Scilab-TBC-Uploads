clc;
clear;
//T=1+2D^2+D^3 over GF(3)
//let X0 is the null sequence
//0=X0+2D^2*X0+D^3*X0 since output of the null sequence is zero
//Adding X0 on both sides we get 2X0=2D^2*X0+D^3*X0
//X0=D^2*X0+2D^3*X0
nul=[1 1 1];
T=[0 0 1 2];
j=1;
for i=1:max(size(T));
    if(T(i)>=1)
        s(1,j)=i-1;
        j=j+1;
    end
end
j=4;
for i=1:15
    nul(1,j)=nul(1,j-s(1))+2*nul(1,j-s(2));
    nul(1,j)=modulo(nul(1,j),3);
    j=j+1;
end
disp("Null Sequence for input 001 is ");
disp(nul);