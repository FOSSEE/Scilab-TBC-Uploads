clear
//
//
//

//Variable declaration
lamda=0.071*10**-9      //wavelength(m)
h=1
k=1
l=0                     //miller indices
a=0.28*10**-9           //lattice constant(m)
n=2                     //order

//Calculation
d=a/sqrt(h**2+k**2+l**2)     
theta=asin(n*lamda/(2*d))*180/%pi     //glancing angle(degrees)

//Result
printf("\n glancing angle is %0.2f  degrees",theta)
