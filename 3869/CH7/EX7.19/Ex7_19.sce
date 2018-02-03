clear
//
//
//

//Variable declaration
d=3.04*10**-10         //lattice spacing(m)
lamda=0.79*10**-10     //wavelength(m) 
n=3                    //order

//Calculation
x=n*lamda/(2*d)
theta=asin(x)*180/%pi      //glancing angle(degrees)

//Result
printf("\n glancing angle is %0.3f  degrees",theta)
