//Variable declaration:
//Froma example 11.10:
Q = 880.0                   //Heat loss due to radiation (Btu/h)
A = 10.0                    //Area of pipe (ft^2)
TH = 140.0                  //Absolute outside temperature of pipe (°F)
TC = 60.0                   //Absolute temperature of surrounding atmosphere (°F)

//Calculation:
hr = Q/(A*(TH-TC))          //Radiation heat transfer coefficient (Btu/h.ft^2.°F)

//Result:
printf("The radiation heat transfer coefficient is : %.1f Btu/h.ft^2.°F.",hr)
