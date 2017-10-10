clear//

//Variables

V1 = 230                 //Primary voltage (in volts)
N2byN1 = 1.0/2.0         //Turns ratio
RL = 200                 //Resistance (in ohm)

//Calculation

V2 = V1 * N2byN1         //Secondary voltage (in volts)
Vm = 2**0.5 * V2         //Maximum value of secondary voltage (in volts)
Im = Vm / RL             //Maximum value of load current (in Ampere)
Pm = Im**2 * RL          //Maximum value of load power (in watt)
Vdc = 0.318 * Vm         //Average value of load power (in watt)
Idc = Vdc / RL           //Average value of load current (in Ampere)
Pdc = Idc**2 * RL        //Average value of load power (in watt)

//Result

printf("\n Maximum value of load power is  %0.1f  W.",Pm)
printf("\n Average value of load power is  %0.1f  W.",Pdc)
