clc
// solution
//initialization of variables
// refer to fig 6.10c

mdot=0.6 // mass flow rate of refrigerant in kg/sec
T1=-24 // evaporator temperature in degree celsius
T2=39.39 // condenser temperature in degree celsius
h1=232.8 // enthalpy of saturated R134a vapour @ -24 degree celsius from table D.1
s1=0.9370 // entropy of saturated R134a vapour @ -24 degree celsius from table D.1
h3=105.3 // enthalpy of saturated R134a liquid @ -24 degree celsius from table D.2
h4=h3 // isenthalpic process

// interpolating enthalpy from table D.3 @ 39.39 degree celsius
h2=(s1-0.9066)*(280.19-268.68)/(0.9428-0.9066)+268.68
QdotE=mdot*(h1-h4) // heat transfer rate
WdotC=mdot*(h2-h1)// power given to compressor

COP=QdotE/WdotC // coefficient of performance

Hp=(WdotC/0.746)/(QdotE/3.52) //calculating Horsepower required per Ton

printf("The rate of refrigeration is %0.1f kJ/s \n ",QdotE)
printf("The coefficient of performance is %0.2f \n ",COP)
printf("The rating in horsepower per ton is %0.3f \n ",Hp)



