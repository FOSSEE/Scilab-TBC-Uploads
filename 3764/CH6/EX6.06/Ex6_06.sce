clc
//

//Variable declaration
cosB=12/13.0                                                                            

//Calculation         
//Centroid
Y=((2*65*3*30)/((2*65*3)+((50)*(3))))                                         // Distance y(mm)

//Centroidal Moment of Inertia
b=(3)/(cosB)                                                                         // Distance(mm) 
I=2*((1/12.0)*(3.25)*((60**3)) + (3.25)*(60)*((8.33**2))) +  ((1/12.0)*(50)*((3**3)) + (50)*(3)*((21.67**2)))// Moment of inertia(mm**4)
I=(I/((10**12)))                                                                   // Moment of inertia(m**4) 
//Shearing Stress at A
ta=0
//Maximum Shearing Stress
Q=(3.25*38.33*(38.33/2.0))

tE=((5)*(2.387*((10**-6))))/((0.2146*((10**-6)))*(0.003))                        
tE=(tE/1000.0)                                                                  // Largest shearing stress


// Result
printf("\n Case(a) Shearing stress at A = %0.3f ksi' ,ta)
printf("\n Case(a) Maximum shearing stress = %0.3f MPa' ,tE)
