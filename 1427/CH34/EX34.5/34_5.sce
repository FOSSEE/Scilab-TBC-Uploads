//ques-34.5
//Calculating energy associated with one photon and one einstein
clc
w=530;//wavelength (in nm)
E1=(6.625*10^-34*3*10^8)/(530*10^-9);//energy of photon
E2=6.023*10^23*E1;//energy of einstein
printf("The energy of one photon is %.2f*10^-19 J and energy of one einstein is %.0f kJ.",E1*10^19,E2/1000);
