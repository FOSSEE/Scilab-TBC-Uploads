clear
//
//
//

//Variable declaration
n1=1.6          //Core refractive index
n2=1.4          //Cladding refractive index
n0=1.33         //water refractive index

//Calculation
NA=sqrt(n1**2-n2**2)/n0    //numerical aperture
theta0=asin(NA)*180/%pi          //acceptance angle(degrees)

//Result
printf("\n numerical aperture is %0.3f  ",NA)
printf("\n acceptance angle is %0.4f  degrees",theta0)
