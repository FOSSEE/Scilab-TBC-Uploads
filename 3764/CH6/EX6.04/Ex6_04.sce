clc
//

//Variable declaration
V=1.5                                                                         // Force(kN)
y1=0.0417                                                                     // Distance(m)
y2=0.0583                                                                     // Distance(m)
AreaA=0.100*0.020                                                             // Area(m**2)
AreaB=0.060*0.020                                                             // Area(m**2)
I=8.63*((10**-6))                                                           // Moment of inertia(m**2) 
t=0.020                                                                       // Distance(m)

//Calculation         
//Shearing Stress in Joint a
Qa=AreaA*y1                                                                   
taweA=((V*Qa)/(I*t))                                                   // Shearing stress in joint a(kPa)


//Shearing Stress in Joint b
Qb=AreaB*y2
taweB=((V*Qb)/(I*t))                                                   // Shearing stress in joint b(kPa)


// Result
printf("\n Shearing stress in joint a = %0.3f kPa' ,taweA)
printf("\n Shearing stress in joint b = %0.3f kPa' ,taweB)
