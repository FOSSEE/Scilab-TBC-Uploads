//Variable declaration:
qi = 3500                       //Initial volumetric flow rate of gas (acfm)
Pi = 1.0                        //Iitial pressure (atm)
Pf = 3.0                        //Final pressure (atm)

//Calculation:
qf = qi*(Pi/Pf)                 //Final volumetric flow rate of gas (acfm)

//Result:
printf("The volumetric flow rate of the gas (100°F, 1 atm) is: %.0f acfm",qf)
