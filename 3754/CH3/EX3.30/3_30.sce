clear//

//Variables

V = 24.0                      //Voltage (in volts)
I = 2.0                       //Current (in Ampere)
Pb = 0.5                      //Power rating of each light bulb (in watt)

//Calculation

P = V * I                     //Maximum power (in watt)
P80 = P * 0.8                 //80percentageof power rating (in watt) 
n = (P80/Pb)                 //Number of bulbs required 

//Result

printf("\n The number of bulbs required is  %0.3f ." ,n)
