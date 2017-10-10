//Variable declaration
theta=90;    //angle(degrees)
lamda=1.5;    //wavelength(angstrom)
d=1.6;    //spacing(angstrom)

//Calculation
theta=theta*%pi/180;    //angle(radian)
n=2*d*sin(theta)/lamda;    //order of diffraction

//Result
printf('order of diffraction is %0.3f     \n',int(n))