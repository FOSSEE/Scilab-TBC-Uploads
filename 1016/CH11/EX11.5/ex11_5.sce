clc;clear;
//Example 11.5

//given data
hf=2.48*10^5;//half life in yrs
k=8.88*10^-14//decay const in 1/s
Mo=4;//intial mass in mg
Na=6.02*10^23;//Avgraodo no. in 1/gm mole

//calculations
kt=0.693/hf*62000;
M=Mo*(exp(-kt));
disp(M,'mass remain unchanged in mg');
N=M*10^-3*Na/234;
A=k*N;
disp(A,'Activity in disintegrations/second ')