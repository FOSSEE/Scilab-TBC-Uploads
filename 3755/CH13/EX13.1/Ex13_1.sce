clear
//
//
//

//Variable declaration    
n1=1.5;     //core refractive index
n2=1.48;    //cladding refractive index
n=1;

//Calculations
NA=sqrt(n1^2-n2^2);       //numerical aperture
i0=asin(NA/n);             //maximum entrance angle(radian)
i0=i0*180/%pi ;         //maximum entrance angle(degrees)

//Result
printf("\n numerical aperture is %0.5f ",NA)
printf("\n maximum entrance angle is %0.2f degrees",i0)
