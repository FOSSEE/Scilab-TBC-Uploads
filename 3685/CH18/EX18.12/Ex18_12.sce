clc
d1 = 10 // Diameter of inner cylinder in cm
d2 = 20 // Diameter of outer cylinder in cm
e1 = 0.65 // emissivity of inner surface
e2 = 0.4 // emissivity of outer surface
T1 = 1000 // Inner surface temperature in K
T2 = 500 // outer suface temperature in K
sigma = 5.67e-8 // Constant
printf("\n Example 18.12\n")
A1 = %pi*d1*1e-2
A2 = %pi*d2*1e-2
R =(((1-e1)/(e1*A1))+((1-e2)/(e2*A2))+(1/(A1*1)))
Eb1 = sigma*T1^4
Eb2 = sigma*T2^4
Q = (Eb1-Eb2)/R // Net heat transfer between two cylinders
printf("\n Net heat transfer between two cylinders is %d W/m length",Q)

//The answers vary due to round off error
clc
d1 = 10 // Diameter of inner cylinder in cm
d2 = 20 // Diameter of outer cylinder in cm
e1 = 0.65 // emissivity of inner surface
e2 = 0.4 // emissivity of outer surface
T1 = 1000 // Inner surface temperature in K
T2 = 500 // outer surface temperature in K
sigma = 5.67e-8 // Constant
printf("\n Example 18.12\n")
A1 = %pi*d1*1e-2
A2 = %pi*d2*1e-2
R =(((1-e1)/(e1*A1))+((1-e2)/(e2*A2))+(1/(A1*1)))
Eb1 = sigma*T1^4
Eb2 = sigma*T2^4
Q = (Eb1-Eb2)/R // Net heat transfer between two cylinders
printf("\n Net heat transfer between two cylinders is %d W/m length",Q)

//The answers vary due to round off error

