clear
//
//
//

//Variable declaration    
n0=1.33;     //water refractive index
n2=1.59;    //cladding refractive index
NA=0.2;     //numerical aperture

//Calculations
n1=sqrt(NA^2+n2^2);      //core refractive index      
NA=sqrt(n1^2-n2^2)/n0;       //numerical aperture
i0=asin(NA);             //acceptance angle(radian)
i0=i0*180/%pi ;         //acceptance angle(degrees)

//Result
printf("\n core refractive index is %0.4f ",n1)
printf("\n acceptance angle is %0.1f degrees",i0)
