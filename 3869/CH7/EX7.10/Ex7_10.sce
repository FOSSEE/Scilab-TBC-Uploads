clear
//
//
//

//Variable declaration
h=1
k=1
l=0
lamda=0.065             //wavelength(nm)
n=2                     //order
a=0.26                  //axial length(nm)

//Calculation
x=n*lamda*sqrt(h**2+k**2+l**2)/(2*a)
theta=asin(x)*180/%pi       //glancing angle(degrees)

//Result
printf("\n glancing angle is %0.1f  degrees",theta)
