clear
//
//
//

//Variable declaration    
NA=0.40;    //numerical aperture
delta=1/100;    //relative difference

//Calculations
i0=asin(NA);      //acceptance angle(radians)
i0=i0*180/%pi ;     //acceptance angle(degrees)
N=1-delta;
thetac=asin(N);     //critical angle(radians)
thetac=thetac*180/%pi ;     //critical angle(degrees)

//Result
printf("\n acceptance angle is %0.1f degrees",i0)
printf("\n critical angle is %0.1f degrees",thetac)
