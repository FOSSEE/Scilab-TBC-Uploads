//Chapter-3,Example 3_9,Page 3-21
clc()

//Given Data:
u1=1.47                 //R.I. of Core
u2=1.46                 //R.I.of Cladding
lam=1.3*10^-6           //wavelength in meter

//Calculations:
NA=sqrt(u1^2-u2^2)      //Formula to find Numerical Aperture

//The condition for single mode is V<2.405
//2*%pi*a*NA/lam < 2.405

a=2.405*lam/(2*%pi*NA)   //Maximum radius of fibre

printf('Maximum radius of Fibre is =%.8f meter \n',a)
