clc;clear;
//Example 5.4
//Mass spectrograph, calculation of linear separation of lines formed on photographic plates

//given values
 E=8*10^4;//electric field in V/m
 B=.55//magnetic induction in Wb/m*2
 q=1.6*10^-19;//charge of ions
 m1=20*1.67*10^-27;//atomic mass of an isotope of neon
 m2=22*1.67*10^-27;//atomic mass of other isotope of neon
 //calculation
x=2*E*(m2-m1)/(q*B^2);//
disp(x,'separation of lines (in metre) is:')
