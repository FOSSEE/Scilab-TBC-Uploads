//Variable declaration:
TH = 25.0                   //Temperature at inner suface of wall (°C)
TC = -15.0                  //Temperature at outer suface of wall (°C)
L = 0.3                     //Thickness of wall (m)
k = 1.0                     //Thermal conductivity of concrete (W/m)
A = 30.0                    //Sueface area of wall (m^2)

//Calculation:
DT = TH-TC                  //Driving force for heat transfer (°C) (part 2)
R = L/(k*A)                 //Thermal resistance (°C/W) (part 3)
Q = DT/R/10**3              //Heat loss through the wall (kW)

//Result:
printf("1. Theoretical part.")
printf("2. The driving force for heat transfer is : %f °C.",DT)
printf("3. The heat loss through the wall is : %f kW.",Q)
