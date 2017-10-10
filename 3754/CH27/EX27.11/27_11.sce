clear//

//Variables 

Ptrdc = 100.0 * 10**-3           //Maximum collector dissipated power (in watt)
VCC = 10.0                       //Source voltage (in volts)
RL = 16.0                        //Load resistance (in ohm)
no=0.5;nc=0.5;

//Calculation

Poac = no * Ptrdc                //Maximum undistorted a.c. output power (in watt)
ICQ = 2 * Poac / VCC             //Quiescent collector current (in Ampere)
R1L = VCC / ICQ                  //Effective load resistance (in ohm)
a = (R1L / RL)**0.5

//Result

printf("\n Maximum undistorted a.c. output power is  %0.3f  W.\nQuiescent collector current is  %0.3f  A.\nTransformer turns ratio is  %0.0f .",Poac,ICQ,a)
