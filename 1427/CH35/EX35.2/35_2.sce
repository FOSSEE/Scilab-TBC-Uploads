//ques-35.2
//Calculating energy per mole of light
clc
w1=85; w2=300;//wavelengths (in nm)
E1=(6.023*10^23*6.625*10^-34*3*10^8)/(w1*10^-9);
E2=(6.023*10^23*6.625*10^-34*3*10^8)/(w2*10^-9);
printf("The energy for 85 nm is %.0f kJ/mol and for 300 nm is %.0f kJ/mol.",E1/1000,E2/1000);
