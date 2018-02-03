clear
//
//
//

//Variable declaration
theta=30*%pi/180     //glancing angle(radian)
h=1
k=1
l=1
lamda=1.5418             //wavelength(angstrom)
n=1                      //order

//Calculation
d=n*lamda/(2*sin(theta))      //interplanar spacing(angstrom)
a=d*sqrt((h**2)+(k**2)+(l**2))     //interatomic spacing(angstrom)

//Result
printf("\n interatomic spacing is %0.2f  angstrom",a)
