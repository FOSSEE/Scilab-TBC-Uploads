//Chapter-3,Example 3_17,Page 3-25
clc()

//Given Data:
n1=1.48               //R.I. of core
delta=0.055           //Realtive R.I.
lam=1*10^-6           //Wavelength of light
a=50*10^-6            //core radius

//Calculations:
//Delta=(u1-u2)/u1
n2=n1-(n1*delta)      //R.I. of cladding
NA=n1*sqrt(2*delta)   //Formula to find Numerical Aperture
printf('Numerical Aperture of Fibre is =%.4f \n \n',NA)


theta0=asin(NA)*180/%pi     //Acceptance angle of fibre
printf(' Acceptance angle of Fibre is =%.2f degrees \n \n',theta0)

V=2*%pi*a*NA/lam            //V number
N=(V^2)/2                   //Number of guided modes

//In book,instead of NA , value of delta is taken into calculation.
//Thus there is calculation mistake in values of V and N.

printf(' V number of Fibre is =%.3f \n \n',V)
printf(' Number of guided mode of Fibre is =%.3f \n',N)
printf('(Calculation mistake in book)')
