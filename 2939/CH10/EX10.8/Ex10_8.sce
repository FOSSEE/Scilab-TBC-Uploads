//Ex10_8

clc;

// Given:
flux=10^12;
s=15.9*10^-24;
m1=0.5;// weight of ruby in mg

//Soluton:

a1=35000;// measured activity in c/s

a2=350000;// corrected activity in )d/s

N=a2/(flux*s*(1-0.5^(1/27.7)));

m=50*N/(6.02*10^23);
 
Cr=(100*m)/4.35;// total Cr in in the Ruby
 
crp=(Cr*100)/0.5;// % cr in the ruby
  
printf("The percentage Cr content in the ruby is = %f ",crp)
