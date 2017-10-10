clc//
//
//

//Variable declaration
n1=1.48;     //refractive index of core
n2=1.45;     //refractive index of cladding

//Calculation
NA=sqrt(n1^2-n2^2);    //numerical aperture
alpha_i=asin(NA);      //angle of acceptance(radian)
alpha_i=(alpha_i*180/%pi);    //angle(degrees)
alpha_id=int(alpha_i);
alpha_im=60*(alpha_i-alpha_id);

//Result
printf("\n numerical aperture is %0.4f ",NA)
printf("\n angle of acceptance is %0.3f degrees %0.0f minutes",alpha_id,alpha_im)
