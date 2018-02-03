clear
//
//
//

//Variable declaration
a=3.16         //lattice parameter(angstrom)
theta=20.3*%pi/180     //glancing angle(radian)
lamda=1.54        //wavelength of X-rays(angstrom)
n=1               //order

//Calculation
d=n*lamda/(2*sin(theta))            //interplanar spacing(angstrom)
x=(a/d)**2

//Result
printf("\n interplanar spacing is %0.2f  angstrom",d)
printf("\n answer for interplanar spacing given in the book is wrong")
printf("\n value of h**2+k**2+l**2 is %0.0f  . hence the miller indices could be (110) (011) or (101)",x)
