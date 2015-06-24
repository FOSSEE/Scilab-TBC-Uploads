
//Example No.9.6.
//Page No.269.
clc;clear;
Eg1 = 0.36;//Energy gap of the first material -[eV].
Eg2 = 0.72//Energy gap of the second material -[eV].
me = 9.1*10^(-31);// -[kg].
A = 0.052;//'A'  is (2*k*T).
T = 300;//Temperature -[K].
a = -0.36;
b = 0.72;
N = (exp(a/A)*exp(b/A));//Ratio of intrinsic carrier densities of material A & B.
printf("\nThe ratio of intrinsic carrier densities of the materials A & B is %3.3e",N);


