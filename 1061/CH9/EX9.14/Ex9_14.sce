//Ex:9.14
clc;
clear;
close;
Eg1=1.12;// band gap for Si in eV
Eg2=0.667;// band gap for Ge in eV
y_si=1.24/Eg1;// cut off wavelength for Si in um
y_he=1.24/Eg2;// cut off wavelength for Ge in um
printf("The cut off wavelength for Si  =%f um", y_si);
printf("\n The cut off wavelength for Ge =%f um", y_he);