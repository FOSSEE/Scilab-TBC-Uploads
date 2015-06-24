//example-5.3
//page n0-141
//given
//lattice constant
a=1.54  //A
//wavelength of beam of light
lambda=1.54 //A
//according to bragg's equation
//n*lambda=2*d*sin(theta)
//following angles are given
theta1=20.3*(%pi)/180
theta2=29.2*(%pi)/180
theta3=36.7*(%pi)/180
theta4=43.6*(%pi)/180
//interplaner spadcing is 
d1=lambda/(2*sin(theta1))  //A
d2=lambda/(2*sin(theta2))  //A
d3=lambda/(2*sin(theta3))  //A
d4=lambda/(2*sin(theta4))  //A
//magnitude of bragg's 
//we have h^2+k^2+l^2=a^2/d^2
//let a^2/d^2= D for notation only
//so
D1=2
D2=4
D3=6
D4=8
//so from bragg's magnitude we can get (hkl)
//(hkl1)=(110)
//(hkl3)=(200)
//(hkl3)=(211)
//(hkl4)=(220)
printf ("the reflection will take from {110},{200},{211} and (220)")
