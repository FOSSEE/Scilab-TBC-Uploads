//Variable declaration:
//From figure 11.2:
L = 1.0                                 //Space between plates (m)
X = 0.5                                 //Length of plate (m)
Y = 2.0                                 //Width of plate (m)
s = 5.669*10**-8                        //Stefan-Boltzmann constant
TH = 2000.0+273.0                       //Temperature of hotter plate (K)
TC = 1000.0+273.0                       //Temperature of colder plate (K)
Btu = 0.2934*10**-3                     //Btu/h in a KW

//Calculation:
A = X*Y                                 //Area of plate (m^2)
Z1 = Y/L                                //Ratio of width with space
Z2 = X/L                                //Ratio of length with space
//From figure 11.2:
FV = 0.18                               //Correction factor
FE = 1.0                                //Emissivity correction factor
Q1 = FV*FE*s*A*(TH**4-TC**4)            //Net radiant heat exchange between plates (kW)
Q2 = Q1/Btu                             //Net radiant heat exchange between plates in Btu/h (Btu/h)
Q1 = round(Q1*10**-2)/10**-2

//Result:
printf("The net radiant heat exchange between plates is : %f kW.",Q1)
printf("The net radiant heat exchange between plates in Btu/h is : %.2f  x 10^8 Btu/h.",Q2/10**8)
