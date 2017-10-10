clear
//
//
//

//Variable declaration
h=6.62*10^-34;      //planck's constant(J sec)
e=1.6*10^-19;       //charge(coulomb)
m=9*10^-31;        //mass(kg) 
E=344;     //energy(volts)
n=1;
theta=60;   //angle(degrees)

//Calculation
lamda=h/sqrt(2*m*e*E);       //wavelength(m)
theta=theta*%pi/180;    //angle(radian)
d=n*lamda*10^10/(2*sin(theta));           //spacing of crystal(angstrom)

//Result
printf("\n spacing of crystal is %0.2f angstrom",d)
