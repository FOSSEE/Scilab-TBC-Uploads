clear
//
//
//

//Variable declaration    
vf=3*10^8;      //velocity of light in free space(m/s)
vc=2*10^8;      //velocity of light in core(m/s)
thetac=60*%pi/180;     //critical angle(radians)

//Calculations
n1=vf/vc;       //core refractive index
n2=n1*sin(thetac);     //cladding refractive index
NA=sqrt(n1^2-n2^2);    //numerical aperture

//Result
printf("\n core refractive index is %0.3f ",n1)
printf("\n cladding refractive index is %0.1f ",n2)
printf("\n numerical aperture is %0.3f ",NA)
printf("\n answer for numerical aperture varies due to rounding off errors")
