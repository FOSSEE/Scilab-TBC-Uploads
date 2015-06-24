//Variable declaration:
m1 = 144206                     //Mass flow rate of flue gas (lb/h)
cp1 = 0.3                       //Average heat capacities of the flue gas (Btu/lb F)
cp2 = 0.88                      //Average heat capacities of the solid (Btu/lb F)
//From example 18.18:
T1 = 550                        //Initial temperature of gas ( F)
T2 = 2050                       //Final temperature of gas ( F)
T3 = 70                         //Initial temperature of solid ( F)
T4 = 550-40                     //Final temperature of solid ( F)

//Calculation:
Dhf = m1*cp1*(T2-T1)            //For the flue gas, the enthalpy change for one hour of operation (Btu)
Dhs = round(Dhf*10**-4)/10**-4  //For the solids, the enthalpy change for one hour of operation (Btu)
m2 = Dhs/(cp2*(T4-T3))          //Mass of solid (lb)

//Result:
printf("The mass of solid is : %.0f lb .",m2)
