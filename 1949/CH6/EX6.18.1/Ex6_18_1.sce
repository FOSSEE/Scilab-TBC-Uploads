//Chapter-6,Example 6_18_1,Page 6-38
clc()

//Given Values:
u0=4*%pi*10^-7       //Permeability in vacuum
X=-0.5*10^-5         //Magnetic susceptibility of silicon
H=9.9*10^4           //Magnetic field intensity

//Calculations:

//As, X=I/H. thus,
I=X*H                //intensity of magnetisation
printf('Intensity of magnetisation is =%.3f \n \n',I)

B=u0*(H+I)           //Magnetic flux density
printf(' Magnetic flux density is =%.3f Wb per m^2 \n',B)
