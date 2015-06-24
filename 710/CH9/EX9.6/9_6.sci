clc();
clear;
//To determine the wavelength
lambda1=0.708;                             //wavelength of a certain line in an X-ray spectrum
Z1=42;                                    //atomic number
Z2=24;
a=1;                                       //screening constant
lambda2=(lambda1*(Z1-a)^2)/((Z2-a)^2)
printf("The wavelength of same line in target of Z=24 is %f A",lambda2);
