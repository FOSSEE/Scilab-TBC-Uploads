clear
//
//
//

//Variable declaration
lamda=3*10**-10      //wavelength(m)
h=1
k=0
l=0                     //miller indices
theta=40*%pi/180    //glancing angle(radian)
n=1                     //order

//Calculation
d=n*lamda/(2*sin(theta))      //space of reflecting plane(m)
a=d*sqrt(h**2+k**2+l**2)      
V=a**3                  //volume of unit cell(m**3)

//Result
printf("\n space of reflecting plane is %0.4f  angstrom",d*10**10)
printf("\n volume of unit cell is %0.2f  *10**-29 m**3",V*10**29)
