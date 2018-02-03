clear
//
//
//

//Variable declaration
NA=0.20         //numerical aperture
n0=1.33         //refractive index of water
n2=1.59         //Cladding refractive index

//Calculation
n1=sqrt((NA**2)+(n2**2))     //core refractive index
x=sqrt((n1**2)-(n2**2))/n0
theta0=asin(x)          //acceptance angle(radian)
theta0=theta0*180/%pi     //acceptance angle(degrees)
theta0m=60*(theta0-int(theta0)) //acceptance angle(minutes)
theta0s=60*(theta0m-int(theta0m)) //acceptance angle(seconds)

//Resul"
printf("\n acceptance angle is %0.3f degrees %0.3f minutes %0.3f seconds",theta0,theta0m,theta0s)
printf("\n answer for angle in seconds given in the book varies due to rounding off errors")
