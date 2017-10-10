
//Variable declaration
n1=1.48;      //refractive index of core
n2=1.45;      //refractive index of cladding

//Calculation
NA=sqrt((n1**2)-(n2**2));     //numerical aperture
theta0=asin(NA);     //acceptance angle(radian)
theta0=theta0*180/%pi;    //acceptance angle(degrees)
theta0_m=60*(theta0-int(theta0));

//Result
printf('numerical aperture is %0.3f     \n',(NA))
printf('acceptance angle is %0.3f    degrees %0.3f minutes \n',int(theta0),(theta0_m))