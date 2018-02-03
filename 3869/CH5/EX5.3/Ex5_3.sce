clear
//
//
//

//Variable declaration
NA=0.3    //numerical aperture
gama=45*%pi/180   //angle(radian)

//Calculation
thetaa1=asin(NA)         //acceptance angle for meridional rays(radian)
thetaa1=thetaa1*180/%pi          //acceptance angle for meridional rays(degrees)
thetaa2=asin(NA/cos(gama))*180/%pi     //acceptance angle for skew rays(degrees)

//Result
printf("\n acceptance angle for meridional rays is %0.2f  degrees",thetaa1)
printf("\n acceptance angle for skew rays is %0.3f  degrees",thetaa2)
printf("\n answer for acceptance angle for skew rays given in the textbook varies due to rounding off errors")
