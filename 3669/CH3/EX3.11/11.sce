
//Variable declaration
lamda=1.54;    //wavelength(angstrom)
h=2;
k=2;
l=0;
n=1;
theta=38.2;    //angle(degrees)

//Calculation
theta=theta*%pi/180;    //angle(radian)
d=n*lamda/(2*sin(theta));     
a=d*sqrt(h**2+k**2+l**2);    //lattice parameter of nickel(angstrom)

//Result
printf('lattice parameter of nickel is %0.3f angstrom    \n',(a))