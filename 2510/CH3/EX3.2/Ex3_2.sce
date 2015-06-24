 
//Variable Declaration:
Q1 = 8.03                       //Years(part 1)
D = 365                         //Days in a year
H = 24                          //Hours in a day
M = 60                          //Minutes in an hour
S = 60                          //Seconds in a minute
Q2 = 150                        //Miles per hour(part 2)
FM = 5280                       //Feet in a mile
YF = 1.0/3.0                    //Yard in a feet
Q3 = 100                        //Meter per second square(part 3)
Cmm = 100                       //Centimeter in a meter
FC = 1.0/30.48                  //Feet in a centimeter
SsMs = 60**2                    //Second square in a minute square
Q4 = 0.03                       //Gram per centimeter cube (part 4)
PG = 1.0/454.0                  //Pound  in a gram
CF = (30.48)**3                 //Centimeter in a feet
 
//Calculation:
A1 = Q1*D*H*M*S                 //Seconds (s)
A2 = Q2*FM*YF                   //Yards per hour (yd/hr)
A3 = Q3*Cmm*FC*SsMs             //Feet per min square (ft/min^2)
A4 = Q4*PG*CF                   //Pound per feet cube (lb/ft^3)
 
//Results:
printf("1. Seconds in %f year is: %f x 10**8 s",Q1,A1/10**8)
printf("2. Yards per hour in %f miles per hour is: %f x 10**5 yd/h",Q2,A2/10**5)
printf("3. Feets per minute square in %f meter per square is: %f  x 10**6 ft/min^2",Q3,A3/10**6)
printf("4. Pounds per feet cube in %f gram per centimeter cube is: %.0f lb/ft^3",Q4,A4)
