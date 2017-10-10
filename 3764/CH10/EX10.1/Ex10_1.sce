clc
//

//Variable declaration
//Free Body. Entire Crankshaft
Vx=-30                                                                        // Force(kN)
P=50                                                                          // Force(kN)
Vz=-75                                                                        // Force(kN)
Mx=(50)*(0.130) - (75)*(0.2)                                                  // Moment(kN.m)
My=0                                                                          // Moment
Mz=30*0.1                                                                     // Moment(kN.m)
A=0.040*0.140                                                                 // Area(m**2)   
Ix=(1/12.0)*(0.040)*((0.140**3))                                              // Moment of inertia(m**4)
Iz=(1/12.0)*((0.040**3))*(0.140)                                              // Moment of inertia(m**4)
a=0.020                                                                       // Distance(m)
b=0.025                                                                       // Distance(m)
t=0.040                                                                       // Distance(m)
OC=33.0                                                                       // Stress(MPa)

//Calculation         
//Normal Stress at H
Sy=(((P/A) + ((Mz)*a)/Iz + ((Mx)*b)/Ix)/(1000.0))                        // Normal stress at H(MPa) 



//Shearing Stress at H
Q=(0.040*0.045*0.0475)
tyz=((((-(Vz)*(Q))/(Ix*t))/1000.0))                                      // Shearing stress at H(MPa)



//Principal Stresses, Principal Planes, and Maximum Shearing Stress at H.
phyp=27.96/2.0
R=sqrt(33**2 + 17.52**2)
Smax=OC+R
Smin=OC-R


// Result
printf("\n Normal stress at H = %0.3f MPa' ,Sy)
printf("\n Shearing stress at H = %0.3f MPa' ,tyz)
printf("\n Principal axis angle = %0.3f degree' ,phyp)
printf("\n Maximum shearing stress at point k = %0.3f MPa' ,R)
printf("\n Maximum principal stress at point k = %0.3f MPa' ,Smax)
printf("\n Minimum principal stress at point k = %0.3f MPa' ,Smin)
