//Example 3.2

clear;

clc;

printf("\nThe problem requires to find Laplace Transform which is not possible in scilab. Hence standard procedure");

printf("\nfor finding the Integral Transforms has been used")

syms s t;

R=10;

C=40*10^(-6);

L=5*10^(-3);

Hsnum=(R/L)*s;

Hsden=((s^(2))+(R/L)*s+(1/(L*C)));

Hs=Hsnum/Hsden;//Transfer Function

vot=ilaplace(Hs);//Impulse Response of Circuit