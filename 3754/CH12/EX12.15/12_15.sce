clear//

//Variables

R = 3.3 * 10**3              //Resitance (in ohm) 

//Calculation

//Case (a)

V11=0;V21=0;
V01 = 0                      //Output Voltage (in volts)

//Case (b)

V21 = 0                      //Voltage (in volts)
V22 = 5                      //Voltage (in volts)
V02 = V22 - 0.7              //Output voltage (in volts)  

//Case (c)

V31 = 5                      //Voltage (in volts)
V32 = 0                      //Voltages (in volts)
V03 = V31 - 0.7              //Output voltage (in volts)  

//Case (d)

V41=5;V42=5;
V04 = V41 - 0.7              //Output voltage (in volts)  

//Result

printf("\n Output Voltage in case 1 is  %0.3f  V.\nOutput Voltage in case 2 is  %0.3f  V.\nOutput Voltage in case 3 is  %0.3f  V.\nOutput Voltage in case 4 is  %0.3f  V.",V01,V02,V03,V04)
