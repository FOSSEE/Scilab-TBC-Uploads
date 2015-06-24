//Variable declaration:
qs = 1000                       //Volumetric flow rate at standard conditions (scfm)
Ta = 300+460                    //Actual absolute temperature in Rankine scale (°R)
Ts = 70+460                     //Standard absolute temperature in Rankine scale (°R)
A = 2.0                         //Inlet area of stack (ft^2)

//Calculations:
qa = qs*Ta/Ts                   //Volumetric flow rate at actual conditions (acfm)
v = qa/A/60                     //Velocity of gas (ft/s)

//Result:
printf("The velocity of the gas through the stack inlet is : %.0f ft/s",v)
