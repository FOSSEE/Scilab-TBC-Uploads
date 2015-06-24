//Example 10.1, page 370
clc
E3p=-3//in ev
E3s=-5.1//in ev
E=E3p-E3s
E_Joule=E*1.6*10^-19//in Joule
h=6.6*10^-34//in J-s
c=3*10^8//in m/s
disp('Part a')
lambda=(h*c)/E_Joule
printf("\n The wavelength is  %e  m",lambda)
//Part b
disp('Part b')
d_lambda=(h*c*E_Joule)/(E_Joule)^2
printf("\n The magnitude of seperation is  %e  m",d_lambda)
//Answer given in book for part b is wrong