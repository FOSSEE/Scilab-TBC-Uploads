clc



//Variable declaration
lamda=0.58
theta=9.5*%pi/180
n=1
d=0.5           //d200=a/sqrt(2**2+0**2+0**2)=0.5a
//Calculations
a=n*lamda/(2*d*sin(theta))     //2*d*sin(theta)=n*lamda 

//Result
printf('a =%0.3f Angstorms\n',(a))
