//Variable declaration:
Q = -5.5*10**6                  //The heat transferred out from the gas (W)
Cp = 1090.0                     //The average heat capacity of the gas (J/(kg . °C))
m = 9.0                         //The gas mass flow rate (kg/s)
T1 = 650                        //The gas inlet temperature (°C)

//Calculation:
T2 = Q/(m*Cp)+T1                //The gas outlet temperature (°C)

//Result:
printf ("The gas outlet temperature is : %.0f  °C",T2)
