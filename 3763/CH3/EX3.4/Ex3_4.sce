clear
//
//
//

//Variable declaration
n=4      
A=107.87    //atomic weight
rho=10500     //density(kg/m**3)
N=6.02*10**26    //number of molecules
theta=19+(12/60)   //angle(degrees)
h=1
k=1
l=1
h0=6.625*10**-34     //planck constant
c=3*10**8     //velocity of light(m/s)
e=1.6*10**-19   //charge(coulomb)

//Calculation
theta=theta*%pi/180     //angle(radian)
a=(n*A/(N*rho))**(1/3)
d=a*10**10/sqrt(h**2+k**2+l**2)      
lamda=2*d*sin(theta)     //wavelength of x rays(angstrom)
E=h0*c/(lamda*10**-10*e)      //energy of x rays(eV)

//Result
printf("\n wavelength of x rays is %0.3f  angstrom",lamda)
printf("\n answer varies due to rounding off errors")
printf("\n energy of x rays is %0.0f  *10**3 eV",E/10**3)
