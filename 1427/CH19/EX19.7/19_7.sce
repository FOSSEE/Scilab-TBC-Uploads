//ques-19.7
//Calculating ionization energy of sodium atom
clc
w=242;//wavelength (in nm)
c=3*10^8;//speed of light (in m/s)
h=6.626*10^-34;//(in Js)
Na=6.023*10^23;//(in atom/mol)
IE=(h*c)/(w*10^-9);//IE in J/atom
IE=IE*Na;//IE in J/mol
printf("The ionization energy of sodium atom is %d kJ.",IE/1000);
