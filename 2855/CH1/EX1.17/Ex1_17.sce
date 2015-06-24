

//page no. 31
//Example no 1-17
clc;
clear all;
disp('Solution (i) is ');
l=0.045;//wavelength in nm
h=6.63*10^-34;      //planks constant in J/s
c=3*10^8;        //speed of light in m/s
E=h*c/l/10^-9;    //energy of photon in eV
mprintf("\n E = %e J",E);
E1=E/(1.6*10^-19);    // energy in joule
mprintf("\n E = %e eV",E1);
e=1.6*10^-19;    // charge of electron
disp('Solution (ii) is ');
V=E/e;
printf("\n Required voltage is = %0.2f KV",V/1000);// result

// Value of wavelenght in problem is .45 but in the solution is .045 
//the value considered above is .045

