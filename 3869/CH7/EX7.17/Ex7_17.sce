clear
//
//
//

//Variable declaration
theta1=(30+(0/60))*%pi/180       //glancing angle(radian)
theta2=(35+(17/60))*%pi/180      //glancing angle(radian)
lamda=0.171                          //wavelength(nm)
h1=1
k1=1
l1=0
h2=2
k2=0
l2=0
h3=1
k3=1
l3=1

//Calculation
d100=lamda/(2*sin(theta1))     //wavelength(nm)
d200=lamda/(2*sin(theta2))     //wavelength(nm)
a1=d100*sqrt(h1**2+k1**2+l1**2)
a2=d200*sqrt(h2**2+k2**2+l2**2)    //lattice parameter in case of bcc
a3=d100*sqrt(h3**2+k3**2+l3**2)
a4=d200*sqrt(h2**2+k2**2+l2**2)    //lattice parameter in case of bcc
d=a3/sqrt(2)                       //atomic diameter(nm) 

//Result
printf("\n lattice parameter in case of bcc are %0.3f nm and %0.3f nm which are not the same. hence the metal is not bcc",a1,a2)
printf("\n lattice parameter in case of fcc are %0.3f nm and %0.3f nm which are the same. hence the metal is fcc",a3,a4)
printf("\n atomic diameter is %0.5f  nm",d)
printf("\n answer for atomic diameter given in the book varies due to rounding off errors")
