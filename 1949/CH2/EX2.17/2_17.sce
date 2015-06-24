//Chapter-2,Example 2_17,Pad 2-39
clc()

//Given Data:
d=0.04*10^-2       //Separation between slits
D=1.7              //distance between screen and slit
B=0.25*10^-2       //Fringe spacing

//Calculations:
//We know,B=D*lam/d
lam=B*d/D          //Wavelength of light
printf('Wavelength of light is = %.10f m \n \n',lam)

//The condition for missing order is,
//(a+b)/a = m/n
b=0.04*10^-2       //Separation in slits
a=0.08*10^-3       //Slit width
n=(a+b)/a          //missing orders for m=1,2,3

n1=1*n
n2=2*n
n3=3*n
printf(' Missing orders are = %.0f',n1)
printf(', %.0f',n2)
printf(', %.0f',n3)
