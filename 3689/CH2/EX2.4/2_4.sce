////
//Variable declaration
n = 2.0          //moles of ideal gas
R = 8.314        //Ideal gas constant, bar.L/(mol.K)
//For reverssible Isothermal expansion 
Pi1 = 25.0       //Initial Pressure of ideal gas, bar
Vi1 = 4.50       //Initial volume of ideal gas, L
Pf1 = 4.50       //Fianl Pressure of ideal gas, bar
Pext = 4.50      //External pressure, bar 
Pint = 11.0      //Intermediate pressure, bar

//Calcualtions reverssible Isothermal expansion 
T1 = Pi1*Vi1/(n*R)
Vf1 = n*R*T1/Pf1
w = -n*R*T1*log(Vf1/Vi1)

//Results
printf("\n For reverssible Isothermal expansion')
printf("\n Work done = %4.2e J",w)


//Calcualtions Single step irreverssible expansion 

w = -Pext*1e5*(Vf1-Vi1)*1e-3

//Results
printf("\n For Single step reverssible expansion')
printf("\n Work done = %4.2e J",w)


//Calcualtions Two step irreverssible expansion 
Vint = n*R*T1/(Pint)
w = -Pint*1e5*(Vint-Vi1)*1e-3 - Pf1*1e5*(Vf1-Vint)*1e-3

//Results
printf("\n For Two step reverssible expansion')
printf("\n Work done = %4.2e J",w)

