clc//
//
//

//Variable declaration
n1=1.563;     //refractive index of core
n2=1.498;     //refractive index of cladding

//Calculation
NA=sqrt(n1^2-n2^2);    //numerical aperture
alpha_i=asin(NA);      //angle of acceptance(radian)
alpha_i=(alpha_i*180/%pi);    //angle(degrees)
alpha_id=int(alpha_i);
alpha_im=60*(alpha_i-alpha_id);

//Result
printf("\n angle of acceptance is %0.3f degrees %0.1f minutes",alpha_id,alpha_im)
printf("\n answer varies due to rounding off errors")
