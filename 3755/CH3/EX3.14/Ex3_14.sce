clear
//
//
//

//Variable declaration
h=2;
k=2;
l=0;
n=1;
theta=32;   //angle(degrees)
lamda=1.54*10^-10;      //wavelength(m)

//Calculation
theta=theta*%pi/180;    //angle(radian)
d=n*lamda*10^10/(2*sin(theta));           //spacing of crystal(angstrom)
a=d*sqrt(h^2+k^2+l^2);     //lattice parameter(angstrom)
r=a/(2*sqrt(2));          //radius of atom(angstrom)

//Result
printf("\n lattice parameter is %0.1f angstrom",a)
printf("\n radius of atom is %0.2f angstrom",r)
