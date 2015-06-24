//Chapter-3,Example 3_11_1,Page 3-25
clc()

//Given Data:
u1=1.52                  //R.I. of Core
u2=1.5189                //R.I.of Cladding
lam=1.3*10^-6            //wavelength in meter
d=29*10^-6               //core diameter in meter
a=d/2

//Calculations:
NA=sqrt(u1^2-u2^2)       //Formula to find Numerical Aperture
V=2*%pi*a*NA/lam         //Normalised frequency
Nm=(V^2)/2               //Number of modes

printf('Normalised frequency of Fibre is (V)=%.3f \n \n',V)
printf(' The Maximum Number of modes the Fibre will support is (Nm) =%.0f \n',Nm)
