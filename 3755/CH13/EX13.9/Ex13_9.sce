clear
//
//
//

//Variable declaration 
delta=0.03;    //relative difference
i0=22*%pi/180;      //acceptance angle(radians)

//Calculations
NA=sin(i0);    //numerical aperture
N=1-delta;
thetac=asin(N);     //critical angle(radians)
theta_c=thetac*180/%pi ;     //critical angle(degrees)

//Result
printf("\n numerical aperture is %0.3f ",NA)
printf("\n critical angle is %0.2f degrees",theta_c)
