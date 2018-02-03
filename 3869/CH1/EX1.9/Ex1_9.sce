clear
//
//
//

//Variable declaration
lamda1=650*10**-9       //wavelength(m)
lamda2=500*10**-9       //wavelength(m)
n1=10
n2=13
D=1                     //distance(m)
d=0.5*10**-3            //seperation(m)

//Calculation
x=n1*lamda1*D/d         //least distance of the point from central maximum(m)

//Result
printf("\n least distance of the point from central maximum is %0.0f  mm",x*10**3)
