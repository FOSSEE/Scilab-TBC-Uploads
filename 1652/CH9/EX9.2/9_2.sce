clc
//Initialization of variables
x=1 //percent
wave=1595 //cm^-1
//calculations
E=2.8593*wave
Nratio=(100-x)/x
logN=log10(Nratio)
T=E/(2.303*1.987*logN)
//results
printf("Temperature = %d K",T)
