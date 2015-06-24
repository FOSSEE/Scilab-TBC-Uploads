
// Variable Declaration
I_a = 10.0*exp(%i*90*%pi/180)    //Line current(A)
I_b = 10.0*exp(%i*-90*%pi/180)   //Line current(A)
I_c = 10.0*exp(%i*0*%pi/180)     //Line current(A)

// Calculation Section
a = 1.0*exp(%i*120*%pi/180)      //Operator
I_a0 = 1.0/3*(I_a+I_b+I_c)                  //Zero-sequence component(A)
I_a1 = 1.0/3*(I_a+a*I_b+a**2*I_c)           //Positive-sequence component(A)
I_a2 = 1.0/3*(I_a+a**2*I_b+a*I_c)           //Negative-sequence component(A)

// Result Section
printf('Zero-sequence component , I_a0 = %.2f∠%.f° A' ,abs(I_a0),phasemag(I_a0))
printf('Positive-sequence component , I_a1 = %.3f∠%.f° A' ,abs(I_a1),phasemag(I_a1))
printf('Negative-sequence component , I_a2 = %.1f∠%.f° A' ,abs(I_a2),phasemag(I_a2))
