//ques-34.3
//Calculating energy and frequency and wave number
clc
w=200;//wavelength (in nm)
E=(6.023*10^23*6.625*10^-34*3*10^8)/(w*10^-9);
f=(3*10^8)/(w*10^-9);
wn=1/(w*10^-9);
printf("The energy required is %.1f kJ/mol, frequency is %.1f*10^15 Hz and wave number is %d /cm.",E/1000,f*10^-15,wn/100);
