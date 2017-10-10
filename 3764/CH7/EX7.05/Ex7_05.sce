clc
//
//

//Variable declaration
p=180                                                                          // Internal gage pressure(psi)
t=(5/16.0)                                                                       // Length(in)
r=(15-t)                                                                       // Distance(in)



//Calculation         
//Case(a) Spherical Cap
s=((p)*(r))/(2.0*t)                                                          // Stress(psi)
tmax=(1/2.0)*((p*r)/(t))                                                                  // Maximum shearing stress(psi)  

//Case(b) Cylindrical Body of the Tank
t=3/8.0                                                                          // Distance(in) 
r=15-t                                                                         // Distance(in)  
s1=(p*r)/(t)                                                                   // Stress(psi)
s2=(1/2.0)*s1                                                                    // Stress(psi)
Save=(1/2.0)*(s1+s2)                                                             // Stress average(psi)                                
R=(1/2.0)*(s1-s2)                                                                // Stress(psi) 

//Stresses at the Weld
Sw=(Save-(R*cos(50*(((%pi)*2)/360.0))))                              // Stress at the weld(psi)

tw=(R*sin(50*(((%pi)*2)/360.0)))                                      // Shearing stress at the weld(psi)


// Result
printf("\n Case(a) Normal stress  = %0.3f ' ,s)
printf("\n Case(a) Maximum shearing stress = %0.3f ' ,tmax)
printf("\n Case(b) Stress in direction perpendicular to helical weld = %0.3f ' ,Sw)
printf("\n Case(b) Stress in direction parallel to helical weld = %0.3f ' ,tw)
