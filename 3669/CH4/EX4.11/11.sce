
//Variable declaration
e=1.6*10**-19;  
m=9.1*10**-31;    //mass(kg)
h=6.63*10**-34;    //planck's constant
V=344;          //potemtial(V)
n=1;
theta=60;     //angle(degrees)

//Calculation
theta=theta*%pi/180;      //angle(radian)
d=n*h/(2*sin(theta)*sqrt(2*m*V*e));     //interplanar spacing(m)

//Result
printf('interplanar spacing is %0.3f  angstrom   \n',(d*10**10))