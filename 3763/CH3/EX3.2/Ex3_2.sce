clear
//
//
//

//Variable declaration
a=5.64      //lattice constant(angstrom)
h1=1
k1=0
l1=0
h2=1
k2=1
l2=0
h3=1
k3=1
l3=1

//Calculation
d100=a/sqrt(h1**2+k1**2+l1**2)     //spacing between (100) plane
d110=a/sqrt(h2**2+k2**2+l2**2)     //spacing between (110) plane
d111=a/sqrt(h3**2+k3**2+l3**2)     //spacing between (111) plane

//Result
printf("\n spacing between (100) plane is %0.3f  angstrom",d100)
printf("\n spacing between (110) plane is %0.2f  angstrom",d110)
printf("\n spacing between (111) plane is %0.2f  angstrom",d111)
