//Calculate the Energy per mole of photon for the absorption of blue ligght and red light

//Example 14.1

clc;

clear;

Lemda1=435*10^-9;  //Wavelength of blue light in m

h=6.626*10^-34;  //Planck's constant in J s

c=3.00*10^8; //Speed of light in m S^-1

E1=(h*c)/Lemda1;  //Energy of the photon for blue light in J

E2=(E1*6.022*10^23)/1000;  //Energy of blue light for one mole of photon in kJ mol^-1

printf("Energy of blue light for one mole of photon = %.0f kJ mol^-1",E2);

Lemda2=680*10^-9;  //Wavelength of red light in m

E3=(h*c)/Lemda2;  //Energy of the photon for red light in J

E4=(E3*6.022*10^23)/1000;  //Energy of red light for one mole of photon in kJ mol^-1

printf("\n Energy of red light for one mole of photon = %.0f kJ mol^-1",E4);
