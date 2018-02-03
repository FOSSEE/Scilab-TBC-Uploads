clear
//
//
//

//Variable declaration
n1=1.53          //Core refractive index
delta=0.0196       //relative refractive index difference

//Calculation
NA=n1*sqrt(2*delta)    //numerical aperture
thetaa=asin(NA)*180/%pi      //acceptance angle(degrees)

//Result
printf("\n numerical aperture is %0.3f  ",NA)
printf("\n acceptance angle is %0.3f  degrees",thetaa)
printf("\n answer for acceptance angle given in the textbook varies due to rounding off errors")
