clear
//
//
//

//Variable declaration
n1=1.563          //Core refractive index
n2=1.498          //Cladding refractive index

//Calculation
NA=sqrt(n1**2-n2**2)    //numerical aperture
phimax=asin(NA)         //acceptance angle(radian)
phimax=asin(NA)*180/%pi     
phimaxd=int(phimax)          //acceptance angle(degrees)
phimaxm=60*(phimax-phimaxd)  //acceptance angle(minutes)

//Result
printf("\n numerical aperture is %0.4f  ",NA)
printf("\n acceptance angle is %0.3f degrees %0.1f minutes",phimaxd,phimaxm)
printf("\n answer for acceptance angle in minutes given in the book varies due to rounding off errors")
