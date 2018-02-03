clear
//
//
//

//Variable declaration
n1=1.563          //Core refractive index
n2=1.498          //Cladding refractive index

//Calculation
NA=sqrt(n1**2-n2**2)    //numerical aperture
theta0=asin(NA)*180/%pi          //acceptance angle(degrees)

//Result
printf("\n numerical aperture is %0.4f  ",NA)
printf("\n acceptance angle is %0.2f  degrees",theta0)
