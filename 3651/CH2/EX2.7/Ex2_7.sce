clc



//Variable declaration
n=1
lamda=1.54
theta=32*%pi/180
h=2
k=2
l=0

//Calculations
d=(n*lamda*10**-10)/(2*sin(theta))   //derived from 2dsin(theta)=n*l
a=d*(sqrt(h**2+k**2+l**2))

//Results
printf('d =%0.3f *10**-10 m\n',(d*10**10))
printf('a =%0.3f *10**-10 m\n',(a*10**10))
