clear
//
//
//

//Variable declaration
n1=1.48      //Core refractive index
n2=1.45      //Cladding refractive index

//Calculation
NA=sqrt(n1**2-n2**2)     //numerical aperture
thetamax=asin(NA)*180/%pi     
thetamaxd=int(thetamax)       //angle of acceptance(degrees)
thetamaxm=60*(thetamax-thetamaxd)   //angle of acceptance(minutes)

//Result
printf("\n numerical aperture is %0.4f  ",NA)
printf("\n angle of acceptance is %0.3f degrees %0.0f minutes",thetamaxd,thetamaxm)
