
//Variable declaration
a=4.57
h=1
k=1
l=1
lamda=1.52
twotheta=33.5*%pi/180
r=5                  //radius
//Calculations
d=a/(h**2+k**2+l**2)**(1/2)
sintheta=lamda/(2*d)
X=r/tan(twotheta)

//Result
printf('d =%0.3f Angstorms\n',(d))
printf('sin(theta)=%0.3f \n',(sintheta))
printf('X =%0.3f cm\n',(X))
