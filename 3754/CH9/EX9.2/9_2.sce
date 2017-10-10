clear//

//Variables

VS = 1.5                    //Source Voltage (in volts)
RS = 0.4                    //Resistance (in ohm)
RL = 2.0                    //Load Resistance (in ohm)

//Calculation

RT = RS + RL                //Total Resistance (in ohm)
I = VS/ RT                  //Current (in Ampere)
VT = I * RL                 //Terminal Voltage (in volts)
PL = I**2 * RL              //Power dissipated by load resistance (in watt)
PS = I**2 * RT              //Power Supplied by the voltage source (in watt)
eff = PL / PS               //Efficiency of the circuit

//Result

printf("\n Terminal Voltage is  %0.3f  V.\nPower dissipated by 2 ohm resistor is  %0.2f  W.\nEfficiency of the circuit is  %0.2f .",VT,PL,eff)
