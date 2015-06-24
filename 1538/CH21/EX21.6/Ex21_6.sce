//example-21.6
//page no-633
//given
//hysteresis loss is
W1=300  //W
//max flux density is 
Bmax1=0.9  //Wb/m^2
Bmax2=1.1  //Wb/m^2
//frequency
f1=50  //Hz
f2=40  //Hz
//we know that
//W=nu*(Bmax)^1.7*f*V
//s0 
//W1=nu*(Bmax1)^1.7*f1*V   ---------(1)
//W2=nu*(Bmax2)^1.7*f*V   -------(2)
//from one and 2 we get
W2=W1*(Bmax2)^1.7*f2/((Bmax1)^1.7*f1)  //W
printf ("The hysteresis loss at 40 Hz frequency is %f W",W2)
