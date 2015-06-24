//example-6.8
//page no-188
//given
//lattice constant of Ir
a=3.84  //A
//burgers vector gfor FCC is 1/2(110)
//so
h=1/2
k=1/2
l=0/2
//magnitude of burgers vector
b=a*sqrt(h^2+k^2+l^2)  //A
//angle of tilts
theta1=1*(%pi)/180  //radians
theta2=3*(%pi)/180  //radians
//spacing between dislocation for theta1
h1=b/tan(theta1)  //A
//spacing between dislocations for theta2
h2=b/tan(theta2)   //A
printf ("the spacinf between dislocations at 1 degree and 3 degrees are %f A and %f A resp",h1,h2)
