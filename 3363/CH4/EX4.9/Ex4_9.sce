//Example 4.9, page 124
clc
disp('Part a')
mu=207//207*me
M=1836//183*me
u=(mu*M)/(mu+M)
D=(1/u)*5.3*10^-11
printf("\nMuon nucleus seperation is  %e m ",D)
disp('Part b')
E=-u*13.6
printf("\n Binding energy is %f ev ",E)
disp('Part c')
R=109737//in cm
lambda=(1/u)*(1/0.75)*(1/R)
printf("\n Wavelength is %e cm ",lambda)
