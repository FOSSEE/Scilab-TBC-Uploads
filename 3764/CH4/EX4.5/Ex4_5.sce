clc
//

// variable declaration
E=(29*(10**6))                                                               // Modulus of elastoplasticity(psi)
sY=50                                                                          // Stress(ksi) 

// Calculation
//Case(a) Onset Of Yield
I=((1/12.0)*(12)*((16**3))-(1/12.0)*(12-0.75)*((14**3))**0)                // Centroidal moment of inertia(in**4) 

//Bending Moment
sMAX=sY                                                                        // Stress(ksi)
c=8.0                                                                            // Distance(in)
My=(sY*I)/c                                                                    // Bending moment(kip.in)
//Radius of Curvature 
Ey=sY/(E*(1.0))                                                                        // Strain
pY=(c/Ey)/(1000.0)                                                               // Radius of curvature(in)
//Case(b) Flanges Fully Plastic
R1=50*12*1                                                                     // Compressive forces on top(kips) 
R4=R1                                                                          // Compressive forces on top(kips) 
R2=((1/2.0)*(50)*(7)*(0.75)+0.05)                                         // Compressive forces on top half(kips)

R3=R2                                                                          // Compressive forces on top half(kips)
//Bending Moment
M=2*((R1*7.5)+(R2*4.67))                                                       // Bending moment(kip.in)
//Radius of Curvature
p=(((7/0.001724)*0.0833))                                               // Radius of curvature(ft)        


// Result
printf("\n Case(a) Bending moment = %0.3f kip.in' ,My)
printf("\n Case(a) Radius of curvature = %0.3f in' ,pY)
printf("\n Case(b) Bending moment = %0.3f kip.in' ,M)
printf("\n Case(b) Radius of curvature = %0.3f ft' ,p)
