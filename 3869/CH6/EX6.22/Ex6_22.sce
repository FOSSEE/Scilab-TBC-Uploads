clear
//
//
//

//Variable declaration
h=1
k=1
l=1                     //miller indices
n=4
A=107.87                //atomic weight(amu)
N=10500*6.052*10**26    //density(kg/m**3)
theta=(19+(12/60))*%pi/180      //angle(radian)
r=1.278*10**-10         //radius(m)
hp=6.625*10**-34        //plancks constant(Js)
c=3*10**8               //velocity of light(m/sec)
e=1.6*10**-19           //charge of electron(coulomb)

//Calculation
a=(n*A/N)**(1/3)        //lattice constant(m)
d=a/sqrt(h**2+k**2+l**2)          //interplanar spacing(m)
lamda=2*d*sin(theta)       //wavelength of X-rays(m)
E=hp*c/(e*lamda)                    //energy of X-rays(eV) 

//Result
printf("\n wavelength of X-rays is %0.3f  angstrom",lamda*10**10)
printf("\n answer in the book varies due to rounding off errors")
printf("\n energy of X-rays is %0.0f  *10**3 eV",E/10**3)
