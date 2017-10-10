//Variable declaration
n=1;    //order of diffraction
theta1=8+(35/60);    //angle(degrees)
d=0.282;     //spacing(nm)
theta2=90;

//Calculation
theta1=theta1*%pi/180;    //angle(radian)
lamda=2*d*sin(theta1)/n;    //wavelength(nm)
theta2=theta2*%pi/180;    //angle(radian)
nmax=2*d/lamda;     //maximum order of diffraction

//Result
printf('wavelength is %0.3f    nm \n',(lamda))
printf('maximum order of diffraction is %0.3f     \n',(nmax))