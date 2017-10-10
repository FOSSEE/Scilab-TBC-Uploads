clear//

//Variables

n = 3                       //Number of amplified stages
Vin1 = 0.05                 //Input to first stage (in volts peak-to-peak)
Vout3 = 150.0               //Output of final stage (in volts peak-to-peak)
Av1 = 20.0                  //Voltage gain of first stage 
Vin3 = 15.0                 //Input of final stage (in volts peak-to-peak)  

//Calculation

Av = Vout3 / Vin1           //Overall voltage gain
Av3 = Vout3 / Vin3          //Voltage gain of third stage
Av2 = Av / (Av1 * Av3)      //Voltage gain of second stage
Vin2 = Vin3 / Av2           //Input voltage gain of second stage                 

//Result

printf("\n Overall voltage gain is  %0.3f .\nVoltage gain of 2nd and 3rd stage is  %0.3f  and  %0.3f .\nInput voltage of the second stage is  %0.3f  Vpk-pk.",Av,Av2,Av3,Vin2)
