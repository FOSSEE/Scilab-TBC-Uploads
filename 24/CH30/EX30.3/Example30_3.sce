//Given that
a = 2*10^-2  //in meter
b = 4*10^-2  //in meter
r = 3*10^-2  //in meter
c = 3*10^6  //in A/m^4
uo = 4*%pi*10^-7  //in SI unit 

//Sample Problem 30-3
printf("**Sample Problem 30-3**\n")
//Using gauss law
//B*L = uo*I
Ienc = integrate('c*x^2*2*%pi*x', 'x', a, r)
L = 2*%pi*r
B = uo*Ienc/L
printf("The magnetic field at x=r is %eT", B)