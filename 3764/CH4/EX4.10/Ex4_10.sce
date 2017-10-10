clc
//
//

// Variable declaration  
M0=1500                                                                 // Couple of magnitude(kN)
yA=50                                                                   // Distance() 
zA=74
Iy=(3.25*((10**-6)))                                                  // Moment of inertia(m**4)
Iz=(4.18*((10**-6)))                                                  // Moment of inertia(m**4)
Iyz=(2.87*((10**-6)))                                                 // Moment of inertia(m**4)   

// Calculation
// Principal axes
Theta=(80.8)/2.0                                                          // Angle 
R=sqrt((0.465**2)+(2.87**2))                                        // Radius
R=2.91*((10**-6))                                                     // Converting to meter
Iu=3.72-2.91                                                            // Moment of inertia(m**4)
Iv=3.72+2.91                                                            // Moment of inertia(m**4) 
//Loading
Mu=(M0*sin(40.4))                                                       // Applied couple(N.m)             
Mv=(M0*cos(40.4))                                                       // Applied couple(N.m)
//Case(a) Stress at A
uA=50*cos(40.4*((2*%pi)/360.0))+74*sin(40.4*((2*%pi)/360.0))        // Perpendicular distances(mm)
vA=-50*sin(40.4*((2*%pi)/360.0))+74*cos(40.4*((2*%pi)/360.0))       // Perpendicular distances(mm)
sA=((972*0.0239)/(0.810*((10**-6))) - ((1142)*(0.0860))/(6.63*(10**-6)))/((10**6)) // Stress at A(MPa)
//Case(b) Neutral Axis
phy=81.8                                                                // Angle neutral axis with the v axis(degree) 
B=81.8-40.4                                                             // Angle neutral axis with the horizontal axis(degree)

// Result
printf("\n Stress at point A  = %0.3f MPa' ,sA)
printf("\n The angle formed by the neutral axis and the horizontal is  = %0.3f degree' ,B)
