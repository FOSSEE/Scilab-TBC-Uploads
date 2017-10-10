//Example number 4.7, Page number 68

clc;clear;
close;

//Variable declaration
n=1;   //order
h=1;
k=1;
l=1;
e=1.6*10**-19;    //charge(c)
theta=27.5;    //angle(degree)
H=6.625*10**-34;    //plancks constant
c=3*10**10;    //velocity of light(m)
a=5.63*10**-10;     //lattice constant(m)
//Calculation
theta=theta*%pi/180;    //angle(radian)
d=a/sqrt(h**2+k**2+l**2);
lamda=2*d*sin(theta)/n;      //wavelength of Xray beam(m)
E=H*c/(e*lamda);           //energy of Xray beam(eV)         
//Result
printf("wavelength of X-ray beam is %.f Angstrom",int32(lamda*10**10))
printf("\n energy of Xray beam is %.2e eV",E)
//answer in the book is wrong
