clc
//
//

//Variable declaration
P=150                                                                                // Horizontal force(lb)
T=(150*18)/(1000.0)                                                                    // Force couple system(kip.in)
Mx=(150*10)/(1000.0)                                                                   // Force couple system(kip.in)
sx=0                                                                                 // Stress at x
M=1.5                                                                                // Torque(kip.in)
c=0.6                                                                                // Radius(in)
n=-1

//Calculation         
//Case(a) Stresses S x , S y , T xy at Point H
sy=(((M)*(c))/((1/4.0)*(%pi)*((0.6**4)))**2)                                 // Stress(ksi)

txy=(((T)*(c))/((1/2.0)*(%pi)*((0.6**4)))**2)                                // Shearing stress(ksi)


//Case(b) Principal Planes and Principal Stresses
phyp1=(n*61)/2.0                                                                       // Angle(degree)
phyp2=180-61                                                                         // Angle(degree)

Smax=8.84/2.0 + sqrt(4.42**2 + 7.96**2)                                                // Maximum stress(ksi)  
Smin=8.84/2.0 - sqrt(4.42**2 + 7.96**2)                                                // Minimum stress(ksi)

// Result
printf("\n Case(a) Normal stress = %0.3f ksi' ,sy)
printf("\n Case(a) Shearing stress = %0.3f ksi' ,txy)
printf("\n Case(b) Principal plane angle = %0.3f degree' ,phyp1)
printf("\n Case(b) Principal plane angle = %0.3f degree' ,phyp2)
printf("\n Case(c) Maximum stress at point H = %0.3f ksi' ,Smax)
printf("\n Case(c) Minimum stress at point H = %0.3f ksi' ,Smin)
