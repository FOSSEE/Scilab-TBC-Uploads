//Chapter 7 Example2//
clc
clear
//half life of radium=hl,decay constant of radium sample=l//
l=1.3566*10^-11// in s^-1//
hl=0.6931/l;
printf("\n Half life = %.3f sec\n",hl);
// to convert half life in years divide by 365*24*60*60//
hl1=hl/(365*24*60*60);
printf("\n Half life in years = %.2f years\n",hl1);
// number of atoms per gram =n,avagadro number=a,atomic mass=m//
A=6.023*10^23;
m=226.095;
n=A/m;
// initial activity =a//
a=l*n;
printf("\n Initial activity in radium = %.2f disintigration/sec\n",a);


