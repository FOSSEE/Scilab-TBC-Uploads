//Chapter-2,Example 2_15_4,Page 2-56
clc()

//Given Data:
GE=1/6000*10^-2               //GE=(a+b) grating element
lam1=5.893*10^-7              //Wavelength of light
lam2=5.896*10^-7              //Wavelength of light
m=2                           //order

//Calculations:
theta1=asin(m*lam1/GE)*180/%pi      //angular position in first minima
theta2=asin(m*lam2/GE)*180/%pi      //angular position in second minima

as=(theta2-theta1)            //Angular separation in minutes
printf('Angular separation is = %.3f degrees \n \n',as)

dlam=lam2-lam1                //difference in wavelength
lam=(lam2+lam1)/2             //Mean wavelength

//We know that R.P.=lam/dlam=m*N
N=lam/dlam/m                  //Number of lines on grating for first order
printf(' Number of lines on grating for first order is = %.0f  \n \n',N)
printf(' But, number of lines per cm on grating is 6000. \n Which is greater than number of lines per cm needed for resolution. \n')
printf(' Hence, both lines will be well resolved in 2nd order.')

