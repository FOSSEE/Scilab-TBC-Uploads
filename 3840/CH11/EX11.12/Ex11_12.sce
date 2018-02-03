clear
//
//
//

//Variable declaration
n1=1.563          //Core refractive index
n2=1.498          //Cladding refractive index

//Calculation
NA=sqrt(n1**2-n2**2)    //numerical aperture
theta0=asin(NA)         //acceptance angle(radian)
theta0=theta0*180/%pi     //acceptance angle(degrees)
theta0m=60*(theta0-int(theta0)) //acceptance angle(minutes)

//Result
printf("\n numerical aperture is %0.3f  ",NA)
printf("\n acceptance angle is %0.3f degrees %0.0f minutes",theta0,theta0m)
printf("\n answer for angle in minutes given in the book varies due to rounding off errors")
