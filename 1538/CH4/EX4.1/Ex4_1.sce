//example-4.1
//page no-110
//given
//atomic radii of iron in BCC and FCC at 910 degrees celcius temp are
rBCC=1.258  //A
rFCC=1.292  //A
//latice side
aBCC=4*rBCC/sqrt(3)
aFCC=2*sqrt(2)*rFCC
//effective number of atoms in BCC and FCC 
nBCC=2
nFCC=4
//volume
VBCC=nBCC/2*(aBCC)^3
VFCC=nFCC/4*(aFCC)^3
//change in volume percent
deltaV=(-1+VFCC/VBCC)*100
printf ("tha volume change percentage is -0.49 and here negative sign indicates that the volume decreases during polymorphism transformation")
