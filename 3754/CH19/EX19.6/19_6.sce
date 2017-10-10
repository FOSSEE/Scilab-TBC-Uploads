clear//

//Variables

V1 = 230.0                //primary voltage (in volts)
N2byN1 = 1.0/4.0          //Turns ratio
RL = 200                  //Load resistance (in ohm)
fin = 50                  //Frequency (in hertz)

//Calculation

V2 = V1 * N2byN1          //Secondary voltage (in volts)
Vm = 2**0.5 * V2          //Maximum value of voltage (in volts)
Vdc = 0.636 * Vm          //Average value of voltage (in volts)
PIV = Vm                  //peak inverse voltage (in volts)
fout = 2 * fin            //Output frequency (in volts)     

//Result

printf("\n The dc output voltage is  %0.1f  V.\nPeak inverse Voltage of a diode is  %0.1f  V.\nOutput frequency is  %0.3f  HZ.",Vdc,PIV,fout)
