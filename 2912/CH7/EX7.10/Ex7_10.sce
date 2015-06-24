// chapter 7
// example 7.10
// determine the percentage of ionic polarisability in sodium crystal 
// page 191-192
clear;
clc;
// given
n=1.5; // refractive index
Er=5.6;// dielectric constant
//calculate
// since (Er-1)/(Er+2)=N*(alpha_e+alpha_i)/(3*E0)   Clausius-Mossotti equation
// and  (n^2-1)/(n^2+2)=N*alpha_e/(3*E0) 
// from above two equations, we get  ((n^2-1)/(n^2+2))*((Er+2)/(Er-1))=alpha_e/(alpha_e+alpha_i)
// or alpha_i/ (alpha_e+alpha_i)= 1-((n^2-1)/(n^2+2))*((Er+2)/(Er-1))= (say P)
// where P is fractional ionisational polarisability
P=1-((n^2-1)/(n^2+2))*((Er+2)/(Er-1)); // calculation of fractional ionisational polarisability
P=P*100; // calculation of percentage of  ionisational polarisability
printf('\nThe percentage of  ionisational polarisability is \t%.1f percent',P);
