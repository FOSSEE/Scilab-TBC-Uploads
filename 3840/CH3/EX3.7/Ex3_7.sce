clear
//
//
//

//Variable declaration
d=0.203*10**-9       //lattice spacing(m)
h=1
k=1
l=0          //miller indices of (110)
lamda=1.5    //wavelength of X-rays(angstrom)

//Calculation
a=d*sqrt(h**2+k**2+l**2)     //length(m)
V=a**3       //volume of unit cell(m**3)
r=sqrt(3)*a/4     //radius of atom(m)

//Result
printf("\n length is %0.3f  *10**-9 m",a*10**9)
printf("\n volume of unit cell is %0.5f  *10**-27 m**3",V*10**27)
printf("\n answer for volume given in the book varies due to rounding off errors")
printf("\n radius of atom is %0.4f  *10**-9 m",r*10**9)
