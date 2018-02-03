clear
//
//
//

//Variable declaration
h=1
k=1
l=1              //miller indices
lamda=0.152            //wavelength(nm)
D=0.2552               //diameter(nm)
theta1=21*%pi/180       //angle(radian)
theta2=(21+(23/60))*%pi/180       //angle(radian)

//Calculation
a=D*sqrt(2)            //lattice parameter for regular crystal(nm)
d111_1=lamda/(2*sin(theta1))
alpha1=d111_1*sqrt(h**2+k**2+l**2)    //lattice parameter for sample A(nm)
d111_2=lamda/(2*sin(theta2))
alpha2=d111_2*sqrt(h**2+k**2+l**2)    //lattice parameter for sample B(nm)

//Result
printf("\n lattice parameter for regular crystal is %0.4f  nm",a)
printf("\n lattice parameter for sample A is %0.4f  nm",alpha1)
printf("\n lattice parameter for sample B is %0.3f  nm",alpha2)
printf("\n lattice parameter of sample A is 1.75 percent greater than that of pure copper")
