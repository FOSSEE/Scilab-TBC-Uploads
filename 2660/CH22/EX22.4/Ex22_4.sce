clc
v = 21 // cutting speed in rev/min.
z = 6
dmin = 5 // daimeter in mm
dmax = 20 // daimeter in mm
nmax = 1000*v/(%pi*dmin) // spindle speed in rev/min.
nmin = 1000*v/(%pi*dmax) // spindle speed in rev/min.
phi = (nmax/nmin)^(1/(z-1)) // common ratio
n1 = nmin // rev/min.
n2 = phi*n1 // rev/min.
n3 = (phi)^2*n1 // rev/min.
n4 = (phi)^3*n1 // rev/min.
n5 = (phi)^4*n1 // rev/min.
n6 = (phi)^5*n1 // rev/min.
printf("\n Common ratio = %0.2f \n Spindle speeds are : %0.2f , %0.1f , %0.2f , %0.2f ,%0.2f and %0.1f rev/min.",phi,n1,n2,n3,n4,n5,n6)
// 'Answers vary due to round off error'
