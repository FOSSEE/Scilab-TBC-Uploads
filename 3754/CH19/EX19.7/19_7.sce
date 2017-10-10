clear//

//Variables

V1 = 230.0                //primary voltage (in volts)
N2byN1 = 1.0/5.0          //Turns ratio
RL = 100                  //Load resistance (in ohm)

//Calculation

V2 = V1 * N2byN1          //Secondary voltage (in volts)
VS = V2 / 2               //Voltage between center - tap and either end of secondary winding (in volts)
Vm = 2**0.5 * VS          //Maximum value of voltage (in volts)
Vdc = 2/%pi * Vm      //Averaage value of Voltage (in volts)
PIV = 2 * Vm              //Peak inverse voltage (in volts)
n = 0.812                 //Efficiency of full wave rectifier

//Result

printf("\n The dc output voltage is  %0.1f  V.\nPeak inverse voltage is  %0.0f  V.\nRectification efficiency is  %0.3f .",Vdc,PIV,n)
