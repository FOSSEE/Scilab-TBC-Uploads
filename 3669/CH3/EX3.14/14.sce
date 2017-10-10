
//Variable declaration
lamda=0.79;    //wavelength(angstrom)
n=3;    //order of diffraction
d=3.04;    //spacing(angstrom)

//Calculation
x=(n*lamda/(2*d));
theta=asin(x);         //glancing angle(radian)
theta=theta*180/%pi;    //glancing angle(degrees)
theta_d=int(theta);       
theta_m=(theta-theta_d)*60;
theta_s=(theta_m-int(theta_m))*60;

//Result
printf('glancing angle is %2d degrees %2d minutes %2d seconds',theta_d,int(theta_m),int(theta_s))
printf('answer given in the book is wrong\n')