clear
//
//
//

//Variable declaration    
n1=1.36;     //core refractive index
delta=0.025;    //relative difference

//Calculations
NA=n1*sqrt(2*delta);       //numerical aperture
i0=asin(NA);             //acceptance angle(radian)
i0=i0*180/%pi ;         //acceptance angle(degrees)

//Result
printf("\n numerical aperture is %0.3f ",NA)
printf("\n acceptance angle is %0.1f degrees",i0)
