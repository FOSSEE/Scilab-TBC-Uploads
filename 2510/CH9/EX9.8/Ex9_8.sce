//Variable declaration:
//From example 9.7:
b = 1.0                     //Width of plate (m)
L = 1.2                     //Length of plate (m)
TS = 58.0                   //Surface temperture of plate (°C)
Ta = 21.0                   //Air flow temperature (°C)
h = 38.7                    //Average heat transfer coefficient (W/m^2.K)

//Calculation:
A = b*L                     //Area for heat transfer for the entire plate (m^2)
Q = h*A*(TS-Ta)             //Rate of heat transfer over the whole length of the plate (W)
Q = round(Q*10**-1)/10**-1

//Result:
printf("The rate of heat transfer over the whole length of the plate is : %.1f W.",Q)
