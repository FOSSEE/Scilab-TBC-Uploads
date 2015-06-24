//Variable declaration:
q1 = 1000.0                   //Volumetric flowrate from tank 1 (gal/day)
q2 = 1000.0                   //Volumetric flowrate from tank 2 (gal/day)
q3 = 2000.0                   //Volumetric flowrate from tank 3 (gal/day)
q4 = 200.0                    //Volumetric flowrate from tank 4 (gal/day)
q5 = 1800.0                   //Volumetric flowrate from tank 5 (gal/day)
q6 = 1000.0                   //Volumetric flowrate from tank 6 (gal/day)
C1 = 4.0                      //Phosphate concentration in tank 1 (ppm)
C2 = 0.0                      //Phosphate concentration in tank 2 (ppm)
C3 = 2.0                      //Phosphate concentration in tank 3 (ppm)
C4 = 20.0                     //Phosphate concentration in tank 4 (ppm)
C5 = 0.0                      //Phosphate concentration in tank 5 (ppm)
C6 = 0.0                      //Phosphate concentration in tank 6 (ppm)
Cf = 120000.0                 //conversion factor for water (gal/10**6lb)

//Calculations:
C1q1 = C1*q1/Cf             //Data 1 (lb/day)
C2q2 = C2*q2/Cf             //Data 2 (lb/day)
C3q3 = C3*q3/Cf             //Data 3 (lb/day)
C4q4 = C4*q4/Cf             //Data 4 (lb/day)
C5q5 = C5*q5/Cf             //Data 5 (lb/day)
C6q6 = C6*q6/Cf             //Data 6 (lb/day)

//Results:
if (((C1q1 + C2q2) == C3q3) &  C3q3 == (C4q4 + C5q5) & C5q5 == C6q6 & C2q2 == C6q6) then
     printf("The data appear to be consistent .")
else
     printf ("The data appear to be inconsistent .")
end    
