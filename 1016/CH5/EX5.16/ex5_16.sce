clc;clear;
//EXample 5.16

//given data
Wo=5000;//wavelength in angstrom
V=3.1;//stopping potential in V

//calcualtion
W=1/((V/12400)+(1/Wo));
disp(W,'The unknown wavelength in Angstrom')