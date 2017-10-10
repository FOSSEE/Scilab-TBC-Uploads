clear
//Given
R = 1000             //mm - radius of the cylinder
th = 10              //mm - thickness of the cylinder
E = 200              //Mpa- youngs modulus 
v = 0.25             // poission ratio
p_in = 0.80          //Mpa- Internal pressure
t =  10               //mm - thickness of the cylinder
//caliculations

Stress_1 = p_in*R/(2*t) //MPa -Hoop stress                    //From derived expressions 
Stress_2 = p_in*R/(2*t) //Mpa- Longitudinal stress
// Hoop stress and Longitudinal stress are same in this case
e = Stress_1*(10**-3)/E-v*Stress_2*(10**-3)/E
dia_change = e*R        //mm- The change in daimeter of the cylinder
printf("\n The maximum stress is  %d MPa",Stress_2)
printf("\n The change in daimeter of the cylinder is %0.2f mm",dia_change)
