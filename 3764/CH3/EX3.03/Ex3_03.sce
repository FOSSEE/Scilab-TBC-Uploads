clc
//

//Variable declaration
tmin=70*((10**6))                                   // Shearing stress(Pa) 
G=77*((10**9))*(1.0)                                      // Modulus of rigidity(Pa)
L=1500                                                // ength of arc AA'(mm)
c1=20                                                 // inner radius(mm)

//Calculation         
//Case(a)
Ymin=tmin/G                                           // shearing strain on the inner surface of the shaft
//Case(b)
phy=((L*Ymin)/(c1))*(360/(2*(%pi)))               // Angle of twist(degrees)

// Result
printf("\n Maximum torque that can be transmitted by the shaft as designed = %0.3f degree' ,phy)
