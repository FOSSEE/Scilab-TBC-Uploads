//ques-34.4
//Calculating wavelength and frequency and wave number of light
clc
E=30;//energy (in kcal/mol)
E=E*4.184;//(in kJ/mol)
f=E/(6.023*10^23*6.626*10^-34);
w=(3*10^8)/f;
wn=1/w;
printf("The energy is %.1f kJ/mol, wavelength is %.0f nm, frequency is %.3f*10^14 Hz and %.2f*10^-8 /m.",E,w*10^6,f*10^-11,wn);
