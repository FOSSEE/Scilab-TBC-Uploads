//Chapter-2,Example 2_34,Page 2-53
clc()

//Given Data:
lam1=5.14034*10^-7               //Wavelength of light
lam2=5.14085*10^-7               //Wavelength of light

//Calculations:
dlam=lam2-lam1                //difference in wavelength
lam=(lam2+lam1)/2             //Mean wavelength

//We know that R.P.=lam/dlam=m*N
N=lam/dlam/1       //Number of lines on grating
printf('Number of lines on grating for first order is = %.0f  \n \n',N)

//Hence R.P. for second order should be
RP1=2*N
printf(' Resolving power in second order should be is= %.0f \n \n',RP1)
//But here,

lam3=8.03720*10^-7               //Wavelength of light
lam4=8.03750*10^-7               //Wavelength of light
dlam2=lam4-lam3                  //difference in wavelength
lam2=(lam4+lam3)/2               //Mean wavelength

RP2=lam2/dlam2
printf(' Resolving power in second order is= %.0f  \n \n',RP2)

printf(' So, the grating will not be able to resolve 8.0372*10^-7 and 8.03750*10^-7 in second order.\n')
printf(' Because Resolving power is greter than actual Resolving power.')
