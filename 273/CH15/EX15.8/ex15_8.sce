clc;clear;
//Example 15.8
//calculation of age of wooden piece

//given values
t=5730;//half life of C14 in years
M1=50;//mass of wooden piece in g
A1=320;//activity of wooden piece (disintegration per minute per g)
A2=12;//activity of living tree

//calculation
k=.693/t;//decay constant
A=A1/M1;//activity after death

T=(1/k)*log(A2/A);
disp(T,'age of mineral in years is');