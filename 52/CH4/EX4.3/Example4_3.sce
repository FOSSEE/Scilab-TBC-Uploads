//Example 4.3
//Program to calculate shortest sequence N such that algorithm B runs //faster than A
clear;
clc ;
close ;
i=0;
N=32; //Given
//Calculation of Twiddle factor exponents for each stage
while 1==1
  i=i+1;
  N=2^i;
  A=N^2;
  B=5*N*log2(N);
  if A>B then break;
    end;   
end
disp(N,'SHORTEST SEQUENCE N =');