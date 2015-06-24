clc;clear;
//Example 3.9

//given data
R=10967700;//Rydberg constant in 1/m

//calculation
W1=4/(3*R);//as n1=1 and n2=2
disp((W1*10^10),'Long wavelength in angstrom');
W2=1/R;//as n1=1 and n2=infinity
disp((W2*10^10),'Short wavelength in angstrom')