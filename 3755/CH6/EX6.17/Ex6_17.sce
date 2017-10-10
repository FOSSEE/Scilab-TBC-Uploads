clear
//
//
//

//Variable declaration    
h=6.62*10^-34;        //planck's constant(J-sec)
m=9*10^-31;    //mass of neutron(kg)
e=1.6*10^-19;        //charge of electron(c)
V=344;       //potential difference(V)
theta=60*%pi/180;         //angle(radian)

//Calculations
d=h*10^10/(2*sin(theta)*sqrt(2*m*e*V));         //interplanar spacing(angstrom)

//Result
printf("\n interplanar spacing is %0.2f angstrom",d)
printf("\n answer in the book is wrong")
