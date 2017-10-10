clc
//

// Variable declaration
y=7                                                                                  // Distance(in)
s=-3.01                                                                              // Stress(ksi)

// Calculation
//Loading
M=10230                                                                              // Couple of moment(kip.in)
//Elastic Unloading
sMl=((10230)*(8))/(1524.0)                                                             // Maximum stress(ksi)
//Permanent Radius of Curvature
p=(((7)*(29*(10**6))*((10**-3)))/(3.01)**-2)                                 // Permanent radius of curvature(in)

p=((p*0.083333))                                                             // Conversion(ft)


// Result
printf("\n Case(a) Residual stress = %0.3f ksi' ,sMl)
printf("\n Case(a) Permanent radius of curvature = %0.3f ft' ,p)
