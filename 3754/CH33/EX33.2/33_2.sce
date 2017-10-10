clear//

//Variables
   
Vpk = 1.0                     //Peak-to-peak voltage (in volts)
Tby2 = 0.1                    //Half-period (in seconds)
tau = 0.25                    //Time constant (in seconds)  

//Calculation

Vc = 0.5 * exp(-Tby2/tau)     //Output voltage (in volts)

//Result

printf("\n Output peak voltage is  %0.1f  V.",Vc)
