clear//

//Variables

RL = 20                        //Load resistance (in kilo-ohm)
V2 = 24                        //Secondary voltage (in volts)

//Calculation

Vm = 2**0.5 * V2               //Maximum value of secondary voltage (in volts)
Im = Vm / RL                   //Maximumj value of load current (in milli-Ampere)
Idc = 0.318 * Im               //dc current (in milli-Ampere)

//Result

printf("\n The value of dc load current is  %0.3f  mA.",Idc)
