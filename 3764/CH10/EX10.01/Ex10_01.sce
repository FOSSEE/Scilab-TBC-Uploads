clc
//
//

//Variable declaration
n=-1                                                                     
P1=15                                                                            // Force(kN)
P2=18                                                                            // Force(kN) 
a=50                                                                             // Distance(mm)
b=60                                                                             // Distance(mm)  
c=0.020                                                                          // Distance(m)
F=P1                                                                             // Force(kN)
V=P2                                                                             // Force(kN) 
t=0.040                                                                          // Distance(m)  
Iz=125.7*((10**-9))                                                            // Moment of inertia(m**4)

//Calculation         
//Internal Forces in Given Section
T=P2*a                                                                           // Torque(N.m)
My=P1*a                                                                          // Moment(N.m) 
Mz=P2*b                                                                          // Moment(N.m)
// Case(a) Normal and Shearing Stresses at Point K
// Geometric Properties of the Section
A=(%pi)*(c**2)                                                               // Area of cross section(m**2)
Iy=(1/4.0)*(%pi)*(c**4)                                                        // Moment of inertia(m**4)
Jc=(1/2.0)*(%pi)*(c**4)                                                        // Moment of inertia(m**4)
Q=(A/2.0)*((4*c)/(3.0*(%pi)))
t=2*c                                                                            // Distance(m)
// Normal Stresses
Sx=(n*(F/A))/(1000.0) + ((My*c)/(Iy))/(1000000.0)                                    // Normal stress(MPa)
// Shearing Stresses
txyV=((V*Q)/(Iz*t))/(1000.0)                                                       // Shearing stress(MPa)
txytwist=((n*(T*c))/(Jc))/(1000000.0)                                              // Shearing stress(MPa) 
txy=(txyV + txytwist)                                                            // Shearing stress(MPa)
// Case(b) Principal Planes and Principal Stresses at Point K
CD=(1/2.0)*(107.4)                                                              // Stress(MPa)  
OC=(1/2.0)*(107.4)                                                              // Stress(MPa)  
DX=52.5                                                                          // Stress(MPa) 
phyp=44.4/2.0                                                                      // Angle(degree)
R=sqrt(53.7**2 + 52.5**2)                                                        // Stress(MPa)
Smax=OC+R                                                                        // Maximum principal stress(MPa)
Smin=OC-R                                                                        // Minimum principal stress(MPa)
// Case(c) Maximum shearing stress at point k
tmax=75.1                                                                        // Shearing stress(MPa) 

// Result
printf("\n Case(a) Normal stress = %0.3f MPa' ,Sx)
printf("\n Case(a) Shearing stress = %0.3f MPa' ,txy)
printf("\n Case(b) Principal axis angle = %0.3f degree' ,phyp)
printf("\n Case(b) Maximum principal stress at point k = %0.3f MPa' ,Smax)
printf("\n Case(b) Minimum principal stress at point k = %0.3f MPa' ,Smin)
printf("\n Case(c) Maximum shearing stress at point k = %0.3f MPa' ,tmax)
