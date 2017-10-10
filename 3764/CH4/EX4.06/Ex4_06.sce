clc
//

//Variable declaration
M=36.8                                                                           // Bending moment(kN)                              
Sy=240                                                                           // Yield strength(MPa)
yY=40                                                                            // Thickness of elastic core(mm) 
n=-1
Sx=n*35.5*((10**6))                                                            // Stress(Pa)    
E=200*((10**9))

//Calculation         
// Case(a)
Sml=((36.8)/(120*((10**-6))))/(1000)                                           // Residual stress(MPa) 
// Case(b)
Ex=Sx/E                                                                          // Residual strain 
p=(n*(40*((10**-3))))/(Ex)                                                     // Radius of Curvature after Unloading(m)

// Result
printf("\n Residual stress = %0.3f MPa' ,Sml)
printf("\n Radius of curvature after unloading = %0.3f m' ,p)
