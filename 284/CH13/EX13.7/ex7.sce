// Chapter 13_Optical Devices
//Caption_PIN Photodiode
//Ex_7//page 618
W=20*10^-4   //intrinsic region width
phio=10^17    //photon flux
alpha=10^3    //absorption coefficient
GL1=alpha*phio   //generation rate of electron hole pair at the front region
GL2=GL1*exp(-alpha*W)
JL=1000*e*phio*(1-exp(-alpha*W))     //photocurrent density
printf('The photocurrent density in PIN photodiode is %1.1f mA/cm^2  ',JL)
