clc
//Variable declaration
a=3.16
lamda=1.54
n=1
theta=20.3*%pi/180

//Calculations
d=(n*lamda)/(2*sin(theta))
x=a/d                             //let sqrt(h**2+k**2+l**2)=x

//Result
printf('d =%0.3f Angstorms\n',(d))
printf('sqrt(h**2+k**2+l**2) =%0.3f \n',(x))
printf('Therefore, h**2+k**2+l**2 =sqrt(2)\n')
printf('h =1, k=1')
