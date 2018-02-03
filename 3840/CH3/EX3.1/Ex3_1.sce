clear
//
//
//

//Variable declaration
a=0.28         //lattice spacing(nm)
lamda=0.071    //wavelength of X-rays(nm)
h=1
k=1
l=0
n=2

//Calculation
d=a/sqrt(h**2+k**2+l**2)           
sintheta=n*lamda/(2*d)
theta=asin(sintheta)*180/%pi            //glancing angle(degrees)

//Result
printf("\n glancing angle is %0.0f  degrees",theta)
