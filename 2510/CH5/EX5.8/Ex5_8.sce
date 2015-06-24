//Variable declaration:
qs = 30000                      //Volumetric flow rate at standard conditions (scfm)
Ta = 1100+460                   //Actual absolute temperature in Rankine scale (°R)
Ts = 60+460                     //Standard absolute temperature in Rankine scale (°R)

//Calculation:
qa = qs*Ta/Ts                   //Volumetric flow rate at actual conditions (acfm)

//Result:
printf("The volumetric flow rate in actual cubic feet per minute is : %.0f acfm",qa)
