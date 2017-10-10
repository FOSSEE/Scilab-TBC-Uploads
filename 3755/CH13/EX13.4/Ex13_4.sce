clear
//
//
//

//Variable declaration    
n1=1.5;     //core refractive index
n2=1.45;     //cladding refractive index

//Calculations
delta=(n1-n2)/n1;    //relative difference
NA=n1*sqrt(2*delta);       //numerical aperture
i0=asin(NA);             //acceptance angle(radian)
i0=i0*180/%pi ;            //acceptance angle(degrees)
theta_c=asin(n2/n1);     //critical angle(radian)
theta_c=theta_c*180/%pi ;            //critical angle(degrees)

//Result
printf("\n numerical aperture is %0.4f ",NA)
printf("\n acceptance angle is %0.2f degrees",i0)
printf("\n critical angle is %0.2f degrees",theta_c)
