//Calulate Total no. of created vacancies
//Ex:6.5
clc;
clear;
close;
r=1.7*10^-10;//atomic radius in m
n1=10^-3;//1mm=10^-3m
a=2*r;//in m
n=n1/a;
ed=2*10^-6;//edge dislocation in m
ns=ed/a;
nv=n*ns;
disp(nv,"Total no. of created vacancies = ");