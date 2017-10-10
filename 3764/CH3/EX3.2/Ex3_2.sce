clc
//

//Variable declaration
din=4                                                              // Inner diamter of shaft (in)
dout=6                                                             // Outer diamter of shaft (in)
STRESS=12                                                          // Shearing stress(ksi) 

//Calculation 
//Hollow Shaft as Designed.                                         
J=((%pi)/2.0)*(((dout/2)**4)-((din/2)**4))                   // Polar moment of inertia(in**4)
Th=(J*STRESS)/3.0                                                     // Allowable shearing stress(kip.in)                            

//Solid Shaft of Equal Weight
rad=sqrt((dout/2)**2-(din/2)**2)                              // Radius of solid shaft of equal weight(in)
Te=(12*(%pi)*((rad**3)))/2.0                                   // Maximum allowable torque(kip.in)

//Hollow Shaft of 8-in. Diameter.
c5=sqrt(4**2 + 2**2 -3**2)                                    // Inner radius of hallow shaft(in)
J8=((%pi)*(4**4-3.317**4))/2.0                                   // Polar moment of inertia(in**4) 
Tor=((212)*(12))/4.0  

// Result
printf("\n Case(a):Maximum torque that can be transmitted by the shaft as designed = %0.3f kip.in' ,Th)
printf("\n Case(b):Maximum torque that can be transmitted by the shaft of equal weight = %0.3f kip.in' ,Te)
printf("\n Case(c):Maximum torque that can be transmitted by the hollow shaft of equal weight and 8 in outer diameter = %0.3f kip.in' ,Tor)
