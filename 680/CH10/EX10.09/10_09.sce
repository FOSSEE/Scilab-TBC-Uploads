//Problem 10.09:

//initializing the variables:
EA = 10
x = 0.10
Da = 117
Db = 0.04521
Dr = -6.53E-6
DH0co2 = -94054; // in cal/gmol
DH0h2o = -57798; // in cal/gmol
DH0c2h6o = -56240; // in cal/gmol

//calculation:
DH0298 = 2*DH0co2 + 3*DH0h2o - DH0c2h6o
DHP = -1*DH0298
DHPl = (1 - x)*DHP
//DHPl = Da*(T - 298) + (Db/2)*(T^2 - 298^2) + (Dr/3)*(T^3 - 298^3)
//solving this, we get
T = 2025 // in k
Tf = 9*(T - 273)/5 + 32 // in deg F

printf("\n\nResult\n\n")
printf("\n the flame temperature is %.0fdeg F",Tf)