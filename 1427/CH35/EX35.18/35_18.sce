//ques-35.18
//Calculating corresponding energy for a NMR spectra
clc
f=60;//frequency used (in MHz)
E=(6.023*10^23)*(6.625*10^-34)*f*10^6;//energy (in J/mol)
E=(E/1000)/4.184;//energy (in kcal/mol)
printf("The energy required is %.9f kcal/mol.",E);
