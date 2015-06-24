//Variable declaration:
qi = 3500                       //Initial volumetric flow rate of the gas (acfm)
Pi = 1.0                        //Initial pressure (atm)
Pf = 3.0                        //Final pressure (atm)
Tf = 300.0+460.0                //Final temperature in Rankine scale (°R)
Ti = 100.0+460.0                //Initial temperature in Rankine scale (°R)

//Calculation:
qf = qi*(Pi/Pf)*(Tf/Ti)         //Final volumetric flow rate of the gas (acfm)

//Result:
printf("The volumetric flow rate of the gas at 300°F temperature is : %.0f acfm",qf)
