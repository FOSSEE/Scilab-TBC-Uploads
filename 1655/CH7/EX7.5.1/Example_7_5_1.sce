// Example 7.5.1  page 7.24

clc;
clear;

h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
e=1.6d-19;  //charge of electron
q=1.43;     //Bandgap energy

lamda=h*c/(q*e)*10^9;    //computing wavelength
printf("\nWavelength is %d nm",lamda);
printf("\nThis proves that photodiode will not operate for photon of wavelength greater than %d nm.",lamda);

//answer in the book 868nm; deviation of 1nm
