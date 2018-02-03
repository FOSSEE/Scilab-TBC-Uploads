clear
//
//
//

//Variable declaration
h=1
k=1
l=1
lamda=1.54         //wavelength(angstrom)
n=1                        //order
theta=19.2*%pi/180     //glancing angle(radian)

//Calculation
d=n*lamda/(2*sin(theta))     
a=d*sqrt(h**2+k**2+l**2)     //cube edge of unit cell(angstrom)

//Result
printf("\n cube edge of unit cell is %0.3f  angstrom",a)
