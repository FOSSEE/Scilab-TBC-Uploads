//Example 4.8//
a=0.404;//nm //lattice parameter
b=1;// lowest-angle
d111=a/sqrt(b^2+b^2+b^2)
mprintf("d111 = %f nm",d111)
l=3.7*10^-3;//nm //nanometer
c=2;//given
thetha=asind(l/(c*d111))
mprintf("\nthetha = %f degree",thetha)
t=2*thetha
mprintf("\nt = %f degree",t)
