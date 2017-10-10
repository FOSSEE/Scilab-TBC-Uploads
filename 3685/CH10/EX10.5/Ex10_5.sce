clc
m = 0.5 // mass of air in kg
P1 = 80 // Initial pressure kPa
T1 = 60 // Initial temperature in degree Celsius
P2 = 0.4 // Final pressure in MPa
R = 0.287 // Gas constant
V1 = (m*R*(T1+273))/(P1) // Volume of air at state 1
g = 1.4 // Heat capacity ratio
T2 = (T1+273)*(P2*1e3/P1)^((g-1)/g)// Final temperature
W12 = (m*R*(T1+273-T2))/(g-1) // Work done in 
V2 = V1*((P1/(P2*1e3))^(1/g)) // Final volume
W23 = P2*(V1-V2)*1e3 // // Work done
W = W12+W23 // Net work done
V3 = V1 // constant volume
T3 = (T2)*(V3/V2) // Temperature at state 3
cp = 1.005 // Heat capacity at constant volume in kJ/kgK
Q = m*cp*(T3-T2)// Heat transfer
printf("\n Example 10.5")
printf("\n The work transfer for the whole path is %f kJ",W)
//The answers vary due to round off error
printf("\n The heat transfer for the whole path %f kJ",Q)
//The answer provided in the textbook is wrong

