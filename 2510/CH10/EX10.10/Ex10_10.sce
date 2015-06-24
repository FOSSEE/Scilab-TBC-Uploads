//Variable declaration:
//From example 10.9:
h = 9.01                    //Heat transferred from bulb (W/m^2.K)
D = 0.06                    //Diameter of sphere (m)
Ts = 113.0+273.0            //Surface temperature of bulb (K)
Too = 31.0+273.0            //Ambient air temperature (K)

//Calculation:
A = %pi*D**2                 //Surface area of bulb (m^2)
Q = h*A*(Ts-Too)            //Heat transfer lost by free convection from light bulb (W)

//Result:
printf("The heat transfer lost by free convection from light bulb is : %.2f  W .",Q)
