clear
//
//
//

//Variable declaration
a=5.63*10**-10          //lattice constant(m)
h=1
k=1
l=1                     //miller indices
theta=27.5*%pi/180    //glancing angle(radian)
n=1                     //order
h=6.625*10**-34         //planck's constant
c=3*10**10              //velocity of light(m/sec)
e=1.6*10**-19           //charge of electron(c)

//Calculation
d111=a/sqrt(h**2+k**2+l**2)      
lamda=2*d111*sin(theta)/n      //wavelength of X-ray beam(m) 
lamda=int(lamda*10**10)             //wavelength of X-ray beam(angstrom) 
E=h*c/(lamda*10**-10*e)         //energy of X-ray beam(eV)    

//Result
printf("\n wavelength of X-ray beam is %0.3f  angstrom",lamda)
printf("\n energy of X-ray beam is %0.2f  *10**5 eV",E/10**5)
printf("\n answer for energy given in the book is wrong")
