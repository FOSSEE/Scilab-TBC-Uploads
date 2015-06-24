clc();
clear;
// To calculate the ratio between electronic and ionic polarizability
epsilon_r=4.94;
N=2.69;     //let n^2 be N
//(epsilon_r-1)/(epsilon_r+2) = (N*alpha)/(3*epsilon_0)
//alpha = alpha_e+alpha_i
//therefore (epsilon_r-1)/(epsilon_r+2) = (N*(alpha_e+alpha_i))/(3*epsilon_0)
//let (N*(alpha_e+alpha_i))/(3*epsilon_0) be X
X=(epsilon_r-1)/(epsilon_r+2);
//Ez=n^2
//therefore (N-1)/(N+2) = (N*alpha_e)/(3*epsilon_0)
//let (N*alpha_e)/(3*epsilon_0) be Y
Y=(N-1)/(N+2);
//dividing X/Y = (N*(alpha_e+alpha_i))/(N*alpha_e)
//therefore X/Y = 1+(alpha_i/alpha_e)
//let alpha_i/alpha_e be A
R=(X/Y)-1;
printf("ratio between electronic and ionic polarizability is %f",R);

//answer given in the book is wrong in the second part
