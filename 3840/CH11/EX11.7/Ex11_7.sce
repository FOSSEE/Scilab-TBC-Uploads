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

//Result
