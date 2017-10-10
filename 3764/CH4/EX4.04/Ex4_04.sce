clc
//

//Variable declaration
depth=10                                                                 // Depth(mm)
width=60                                                                 // Width(mm)
thickness=9                                                              // Thickness(mm)
Smax=150                                                                 // Maximum stress(MPa) 
M=180                                                                    // Bending moment(N.m) 

//Calculation         
d=width-(2*depth)                                                        // Distance(mm) 
c=(1/2.0)*d                                                                // Distance(mm) 
b=9                                                                      // Distance(mm)
I=(1/12.0)*(b*((10**-3)))*((d*((10**3)))**3)                           // Moment of inertia of the critical cross section(m**4)
Ratio=((M)*(c)*((10**3)))/(I)                                          // Stress(MPa)
k=150/75.0                                                                 // Factor 
Ratio2=width/(d*1.0)                                                           // Ratio
r=0.13*40                                                                // Radius(mm)
wid=2*r                                                                  // Width(mm)

// Result
printf("\n Smallest allowable width of the groves = %0.3f mm' ,wid)
