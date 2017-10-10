clear
//
//
//

//Variable declaration
n2=1.47              //refractive index of cladding
n1=1.5    //refractive index of core

//Calculation
phi_c=asin(n2/n1)     //critical angle(radian)
phi_c=phi_c*180/%pi     //critical angle(degrees)
NA=sqrt(n1**2-n2**2)     //numerical aperture
phi_max=asin(NA)       //acceptance angle(radian)
phi_max=phi_max*180/%pi     //acceptance angle(degrees)

//Result
printf("\n critical angle is %0.1f  degrees",phi_c)
printf("\n numerical aperture is %0.1f  ",NA)
printf("\n acceptance angle is %0.1f  degrees",phi_max)
