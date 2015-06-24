//example-20.2
//page no-594
//given
//capacitance of capacitor
C=0.025*10^-6  //F
//power factor
//tan delta=0.0005
//for notation let tan delta=delta
delta=0.0005
//current
I=200  //A
//frequency
f=25*10^3  //Hz
//volatge across a capacitor is
V=I/(2*(%pi)*f*C)  //V
//dielectric loss
P=V*I*delta  // W
printf ("the dielectric loss is %f Watt",P)
