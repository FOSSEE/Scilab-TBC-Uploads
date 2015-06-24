clc();
clear;
//Given :
lambda = 5890; //Wavelength in A
//(a)Calcite crystal
mu1_o = 1.658;//refractive index for ordinary ray
mu1_e = 1.486;//refractive index for extraordinary ray
t1 = 0.0052 ; //thickness in mm
// 1 A = 1.0*10^-7 mm
alpha1 = ((2*%pi*(mu1_o-mu1_e)*t1)/(lambda*10^-7)); // phase difference in radians
//(b) Quartz crystal
mu2_o = 1.544; //refractive index for ordinary ray
mu2_e = 1.553; //refractive index for extraordinary ray
t2 = 0.0234;//thickness in mm
alpha2 = ((2*%pi*(mu2_e-mu2_o)*t2)/(lambda*10^-7)); // phase difference in radians
printf("(a)Calcite crystal : \n  Phase difference is %.3f radians \n",alpha1);
printf("(a)Quartz crystal : \n  Phase difference is %.3f radians",alpha2);


