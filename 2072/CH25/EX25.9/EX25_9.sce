//Chapter 25
clc
//Example 8
//given
L1=589 // wavelength of first bright line in sodium spectrum in nm
L2=589.59 // wavelength of second bright line in sodium spectrum in nm
m=2 // order of the spectrum
delta_L=L2-L1
R=L1/delta_L
disp(R,"a) Resolving poer of grating inorder to distinguish the wavelengths is")
N=R/m
printf("No.of lines of the grating illuminated to resolve the lines in the second order spectrum are %d",N)


