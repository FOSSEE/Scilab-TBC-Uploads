
//Variable declaration
n1=1.50;      //refractive index of core
delta=4/100;    //fractional refractive indices change

//Calculation
n2=n1-(n1*delta);      //refractive index of cladding
NA=sqrt((n1**2)-(n2**2));     //numerical aperture
theta0=asin(NA);     //acceptance angle(radian)
theta0=theta0*180/%pi;    //acceptance angle(degrees)
theta0_m=60*(theta0-int(theta0));
thetac=asin(n2/n1);     //critical angle(radian)
thetac=thetac*180/%pi;    //critical angle(degrees)
thetac_m=60*(thetac-int(thetac));

//Result
printf('refractive index of cladding is %0.3f     \n',n2)
printf('numerical aperture is %0.3f     \n',(NA))
printf('acceptance angle is %0.3f  degrees %0.3f  minutes  \n',int(theta0),int(theta0_m))
printf('critical angle is %0.3f    degrees %0.3f  minutes\n',int(thetac),int(thetac_m))