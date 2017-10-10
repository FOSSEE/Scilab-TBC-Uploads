clc
//
//
//Variable declaration
Ea=400*((10**-6))                                                       // Principal strain(in./in)
Eb=-50*((10**-6))                                                       // Principal strain(in./in)
v=0.30                                                                    // Poisson's ratio
n=-1

//Calculation         
//Case(a) Maximum In-Plane Shearing Strain
Ymaxinplane=Ea-Eb                                                         // Maximum in-plane shearing strain(rad)
//Case(b) Maximum Shearing Strain
Ec=n*(v/(1.0-v))*(Ea+Eb)                                                    // Strain(in./in)                                                               // Maximum shearing strain(rad)

// Result
printf("\n Case(a) Maximum in plane shearing strain = %0.3f rad' ,Ymaxinplane)
printf("\n Case(b) Maximum shearing strain = %0.3f u' ,Ec)
