//ques-34.2
//Calculating energy per mole of light for given wavelengths
clc
w1=85; w2=300;//wavelengths (in nm)
E1=(6.023*10^23*6.625*10^-34*3*10^8)/(w1*10^-9);//E=nhc/w
E2=(6.023*10^23*6.625*10^-34*3*10^8)/(w2*10^-9);
printf("The energy of light for 85nm is %.0f kJ/mol and for 300nm is %.0f kJ/mol.",E1/1000,E2/1000);
