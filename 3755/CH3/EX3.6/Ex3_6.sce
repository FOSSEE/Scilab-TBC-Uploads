clear
//
//
//

//Variable declaration
d=0.4086*10^-10;    //lattice spacing(m)
theta=65;   //glancing angle(degree)
h=6.6*10^-34;    //plank's constant(Js)
m=9.1*10^-31;    //mass(kg)
n=1;

//Calculation
theta=theta*%pi/180;    //angle(radian)
lamda=2*d*sin(theta)/n;    //debroglie wavelength(m)
v=h/(m*lamda);        //velocity(m/sec)

//Result
printf("\n debroglie wavelength is %0.4f *10^-10 metre",lamda*10^10)
printf("\n velocity is %0.3f *10^6 m/sec",v/10^6)
printf("\n answer in the book is wrong")
