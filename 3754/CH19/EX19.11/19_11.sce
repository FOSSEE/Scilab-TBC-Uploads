clear//

//Variables

Vdc = 30.0                        //Average value of voltage (in volts)
RL = 1.0                          //Resistance (in kilo-ohm)
gamma = 0.01                      //Ripple factor
f = 50                            //Frequency (in Hertz)
//Calculation

C = 2890.0 / (gamma * RL)         //Capacitance (in nano Farad)

//Result

printf("\n Value of capacitance is  %0.3f  micro-Farad.",C * 10**-3)
