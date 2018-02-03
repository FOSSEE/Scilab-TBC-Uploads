clear
//
//
//

//Variable declaration
lamda=1.54*10**-10         //wavelength(m)
n=1                        //order
theta=19.2*%pi/180     //glancing angle(radian)
h=1
k=1
l=1

//Calculation
d=n*lamda/(2*sin(theta))     
a=d*sqrt(h**2+k**2+l**2)     //cube edge of unit cell(m)

//Result
printf("\n cube edge of unit cell is %0.3f  *10**-10 m",a*10**10)
