clc
//

//Variable declaration
l=1.5                                                 // length of the cylindrical shaft
Tmax=120                                              // Maximum allowable torque
c1=0.02                                               // Inner radius 
c2=0.03                                               // Outer radius



//Calculation         
//Case(a)
J=(1/2.0)*(%pi)*(c2**4-c1**4)                       // Polar moment of inertia 
c=c2                                                  // Letting c equal to c2
T=((J*Tmax*((10**6)))/(c))/(1000.0)                   // Largest Permissible Torque
//Case(b)
Tmin=(c1/c2)*(Tmax)                                   // Minimum Shearing Stress

//Result
printf("\n Largest permissible torque that can be applied to the shaft = %0.3f kN' ,T)
printf("\n Minimum shearing stress that can be applied to the shaft = %0.3f MPa' ,Tmin)
