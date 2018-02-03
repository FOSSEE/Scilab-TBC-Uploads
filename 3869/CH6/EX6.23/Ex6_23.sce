clear
//
//
//

//Variable declaration
h=1
k=1
l=0                     //miller indices
d100=0.28               //lattice constant(nm)
n=2
lamda=0.071             //wavelength(nm)

//Calculation
d110=d100/sqrt(h**2+k**2+l**2)          //interplanar spacing(m)
theta=asin(n*lamda/(2*d110))*180/%pi    //glancing angle(degrees)

//Result
printf("\n glancing angle is %0.0f  degrees",theta)
