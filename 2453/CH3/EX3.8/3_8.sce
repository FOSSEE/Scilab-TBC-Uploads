//To calculate the wavelength
m = 9.1*10^-31;     //mass of electron, kg
h = 6.626*10^-34;    //planck's constant
e = 1.6*10^-19;
E = 2000;     //energy, eV
E = E*e;     //energy, J
lamda = h/sqrt(2*m*E);      //wavelength, m
lamda_nm = lamda*10^9;      //velength, nm
printf("wavelength is %5.4f nm",lamda_nm); 
