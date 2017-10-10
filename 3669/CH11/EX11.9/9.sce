
//Variable declaration
NA=0.20;     //numerical aperture
n2=1.59;     //refractive index of cladding
n0=1.33;     //refractive index of water

//Calculation
n1=sqrt(NA**2+n2**2);      //refractive index of core
theta0=asin(NA/n0);       //acceptance angle(radian)
theta0=theta0*180/%pi;    //acceptance angle(degrees)
theta0_m=60*(theta0-int(theta0));
theta0_s=60*(theta0_m-int(theta0_m));

//Result
printf('acceptance angle is %0.3f   degrees %0.3f  minutes %0.3f seconds  \n',int(theta0),int(theta0_m),(theta0_s))
printf('answer varies due to approximating off errors\n')