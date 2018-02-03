clear
//
//
//

//Variable declaration
n1=1.50          //Core refractive index
n2=1.47          //Cladding refractive index

//Calculation
phic=asin(n2/n1)      //critical angle(radian)
phic=phic*180/%pi     //critical angle(degrees)
NA=sqrt(n1**2-n2**2)    //numerical aperture
phimax=asin(NA)         //acceptance angle(radian)
phimax=asin(NA)*180/%pi     //acceptance angle(degrees)

//Result
printf("\n critical angle is %0.1f  degrees",phic)
printf("\n numerical aperture is %0.1f  ",NA)
printf("\n acceptance angle is %0.1f  degrees",phimax)
