clc;clear;
//Example 15.7
//calculation of age of mineral

//given values
t=4.5*10^9;//half life in years
M1=238;//atomic mass of Uranium in g
m=.093;//mass of lead in 1 g of uranium in g
NA=6.02*10^26;//avogadro's number
M2=206;//atomic mass of lead in g

//calculation
n=NA/M1;//no of nuclei in 1 g of uranium sample
n1=m*NA/M2;//no of nuclei in m mass of lead
c=n1/n;
k=.693/t;//decay constant
T=(1/k)*log(1+c);
disp(T,'age of mineral in years is');