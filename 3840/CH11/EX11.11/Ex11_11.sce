clear
//
//
//

//Variable declaration
n1=1.50          //Core refractive index
delta=4/100      //fractional index change

//Calculation
n2=n1-(delta*n1)             //Cladding refractive index
NA=sqrt(n1**2-n2**2)    //numerical aperture
theta0=asin(NA)         //acceptance angle(radian)
theta0=theta0*180/%pi     //acceptance angle(degrees)
theta0m=60*(theta0-int(theta0)) //acceptance angle(minutes)
thetac=asin(n2/n1)      //critical angle(radian)
thetac=thetac*180/%pi     //critical angle(degrees)
thetacm=60*(thetac-int(thetac)) //critical angle(minutes)

//Result
