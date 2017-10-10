
//Variable declaration
lamda=1.54;    //wavelength(angstrom)
h=1;
k=1;
l=1;
n=1;
theta=19.2;    //angle(degrees)

//Calculation
theta=theta*%pi/180;    //angle(radian)
d=n*lamda/(2*sin(theta));     
a=d*sqrt(h**2+k**2+l**2);      //cube edge of unit cell(angstrom)

//Result
printf('cube edge of unit cell is %0.3f   angstrom  \n',(a))