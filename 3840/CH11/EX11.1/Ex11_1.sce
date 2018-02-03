clear
//
//
//

//Variable declaration
n1=1.48          //Core refractive index
n2=1.45          //Cladding refractive index

//Calculation
NA=sqrt(n1**2-n2**2)    //numerical aperture
theta0=asin(NA)         //acceptance angle(radian)
theta0=theta0*180/%pi     //acceptance angle(degrees)
theta0m=60*(theta0-int(theta0)) //acceptance angle(minutes)
thetac=asin(n2/n1)      //critical angle(radian)
thetac=thetac*180/%pi     //critical angle(degrees)
thetacm=60*(thetac-int(thetac)) //critical angle(minutes)
delta=(n1-n2)/n1             //fractional index change

//Result
printf("\n numerical aperture is %0.4f  ",NA)
printf("\n acceptance angle is %0.3f degrees %0.0f minutes",theta0,theta0m)
printf("\n critical angle is %0.3f degrees %0.3f minutes",thetac,thetacm)
printf("\n fractional index change is %0.2f  ",delta)
