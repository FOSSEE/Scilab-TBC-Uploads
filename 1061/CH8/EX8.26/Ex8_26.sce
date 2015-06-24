//Ex:8.26
clc;
clear;
close;
nt=0.18;// total efficiency
Eg=1.43;// band gape energy eV
V=2.5;// appied voltage in volt
n_ex=(nt*(Eg/V))*100;// external efficiency
printf("The external efficiency =%f %%", n_ex);