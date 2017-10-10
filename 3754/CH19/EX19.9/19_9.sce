clear//

//Variables

Vs = 150.0            //Voltage (in volts)
Idc = 2.0             //Average value of current (in Ampere)

//Calculation

Vdc = 2.34 * Vs       //Average calue of voltage (in volts)
Ipi = 1/0.955 * Idc   //Peak current per diode (in Ampere)
Iavg = 2.0/3.0        //Average current per diode (in AMpere)
Pdc = Vdc * Idc       //Average power delievered to the load (in watt)

//Result

printf("\n The value of Vdc is  %0.3f  V.\nPeak current through each diode is  %0.1f  A.\nAverage current through each diode is %0.2f  A.\nAverage power delievered to the load is  %0.3f  W.",Vdc,Ipi,Iavg,Pdc)
