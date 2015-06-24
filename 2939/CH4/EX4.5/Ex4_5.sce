
// Ex4_5

clc;

// Given:
t=5736;// in years
Nk=16.1;// dis/min
L=6.022*10^23;
// Solution:
k=(0.693*60)/(t*3.16*10^7);
N1=Nk/k;// atoms per g for C14
N2=L/12;//

r=(N1*10^12)/N2;// ratio of C14/C12 in atmosphere

printf("The ratio of C14/C12 in atmosphere in 10^-12 is = %f",r)
