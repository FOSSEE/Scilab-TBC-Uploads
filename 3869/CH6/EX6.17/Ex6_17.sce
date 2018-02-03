clear
//
//
//

//Variable declaration
h=2
k=0
l=2                     //miller indices
theta=34*%pi/180    //glancing angle(radian)
n=1                     //order
lamda=1.5*10**-10       //wavelength of X-ray beam(m) 

//Calculation
d=n*lamda/(2*sin(theta))      
a=d*sqrt(h**2+k**2+l**2)          //lattice constant(m)

//Result
printf("\n lattice constant is %0.4f  angstrom",a*10**10)
printf("\n answer given in the book varies due to rounding off errors")
