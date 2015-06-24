//example-20.10.sce
//page no-614
//given
//capacitance of capacitor
C=0.2*10^-6  //F
//loss factor
//tan delta=0.004
// for notation let us use tan delta=delta
delta=0.004
//voltage
V=240  //V
//frequency
f=50  //Hz
//and 
omega=2*(%pi)*f
//power loss is given by
P=V^2*omega*C*delta  //W 
printf ("power loss in the capacitor is %f W",P)
