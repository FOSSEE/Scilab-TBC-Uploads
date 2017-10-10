clear//

//Variables

VS = 6                 //Source voltage (in volts)
R1 = 330               //Resistance (in ohm)
R2 = 470               //Resistance (in ohm)
VD = 0.7               //Diode voltage (in volts)

//Calculation

RT = R1 + R2           //Total Resistance (in ohm)
I = (VS - 0.7)/RT      //Current through the diode

//Result

printf("\n Current through the circuit is  %0.3f  mA.",I * 10**3)
