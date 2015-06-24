//Variable declaration:
qi = 3500                       //Initial volumetric flow rate of gas (acfm)
Ti = 100.0                      //Initial temperature (°F)
Tf = 300.0                      //Final temperature (°F)

//Calculation:
Ti_R = Ti+460                   //Initial temperatur in Rankine scale (°R)
Tf_R = Tf+460                   //Final temperatur in Rankine scale (°R)
qf = qi*(Tf_R/Ti_R)             //Final volumetric flow rate of gas (acfm)

//Result:
printf("The final volumetric flow rate of gas is : %.0f acfm",qf)
