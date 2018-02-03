clear
//
//
//

//Variable declaration
h=1
k=1
l=1              //miller indices
a=0.352            //lattice parameter(nm)
theta=(28+(30/60))*%pi/180       //angle(radian)
hp=6.626*10**-34       //plancks constant(Js)
m=1.67*10**-27        //mass of proton(kg)
kB=1.38*10**-23       //boltzmann constant

//Calculation
d=a/sqrt(h**2+k**2+l**2)
lamda=2*d*sin(theta)      //wavelength(nm)
T=(hp**2)/(3*m*kB*(lamda*10**-9)**2)           //effective temperature of neutrons(K)

//Result
printf("\n effective temperature of neutrons is %0.0f  K",T)
