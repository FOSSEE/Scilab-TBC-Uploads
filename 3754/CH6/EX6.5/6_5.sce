clear//

//Variables

Vmax = 20.0            //Voltage (in milli-volts)

//Calculation

Vrms = 0.707 * Vmax    //Rms Voltage (in milli-volts)
Vdc = 0.637 * Vmax     //Average value of signal (in milli-volts)

//Result

printf("\n RMS value is  %0.3f  mV.\nAverage value is  %0.3f  mV.",Vrms,Vdc)
