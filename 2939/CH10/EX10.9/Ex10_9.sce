
//Ex10_9

clc;

// Given:

flux=10^12;
s=3.28*10^-27;
hf=1;// half life in min
//Soluton:

a1=2500;// measured activity in d/s

a2=5000;// corrected activity in d/s

N=a2/(flux*s);

m=76*N/(6.02*10^23);
 
Cr=(100*m)/7.8;// total mass of Ge atoms (isotopic abandunce is 7.8%)
  
printf("The total mass of Ge atoms present in sample is = %f g",Cr)
