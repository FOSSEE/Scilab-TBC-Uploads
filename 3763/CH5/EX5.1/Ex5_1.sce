clear
//
//
//

//Variable declaration
Na=6.023*10**26    //avagadro number
e=1.602*10**-19
d=8960     //density
N=1       //number of free electrons
w=63.54    //atomic weight
i=10      //current(ampere)
m=9.1*10**-31    
rho=2*10**-8   //resistivity(ohm m)
r=0.08*10**-2    //radius(m)
c=1.6*10**6   //mean thermal velocity(m/s)

//Calculation
A=%pi*r**2    //area(m**2)
n=Na*d*N/w
vd=i/(A*n*e)     //drift speed(m/s)
tow_c=m/(n*e**2*rho)
lamda=tow_c*c      //mean free path(m)

//Result
printf("\n drift speed is %0.1f  *10**-5 m/s",vd*10**5)
printf("\n mean free path is %0.2f  *10**-8 m",lamda*10**8)
printf("\n answer given in the book is wrong")
