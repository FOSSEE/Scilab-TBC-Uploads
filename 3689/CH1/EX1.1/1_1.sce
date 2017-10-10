////Variable Declaration
Pi = 3.21e5             //Recommended tyre pressure, Pa
Ti = -5.00              //Initial Tyre temperature, °C
Tf = 28.00              //Final Tyre temperature, °C

//Calculations
Ti = 273.16 + Ti
Tf = 273.16 + Tf
pf = Pi*Tf/Ti           //Final tyre pressure, Pa

//Results
printf("\n Final Tyre pressure is %6.2e Pa",pf)

