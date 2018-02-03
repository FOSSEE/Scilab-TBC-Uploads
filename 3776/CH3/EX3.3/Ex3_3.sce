clear
//Given
R = 1000    // mm - radius of the cylinder
t =  10     //mm - thickness of the cylinder
p_in = 0.80 //Mpa- Internal pressure
E = 200     //Mpa- youngs modulus
v = 0.25    // Poisson ratio
//calculations

Stress_1 = p_in*R/t     //MPa -Hoop stress                    //From derived expressions
Stress_2 = p_in*R/(2*t) //Mpa- Longitudinal stress
e = Stress_1*(10**-3)/E-v*Stress_2*(10**-3)/E
dia_change = e*R        //mm- The change in daimeter of the cylinder
printf("\n The Hoop stress is  %0.3f MPa",Stress_1)
printf("\n The longitudinal stress is  %0.3f MPa",Stress_2)
printf("\n The change in daimeter of the cylinder is %0.3f mm",dia_change)
