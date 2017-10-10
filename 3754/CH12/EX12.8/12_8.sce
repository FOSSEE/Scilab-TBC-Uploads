clear//

//Variables

PDmax = 0.5              //power dissipation (in watt)
VF = 1                   //Forward voltage (in volts)
VBR = 150                //Breakdown voltage (in volts)

//Calculation

IFmax = PDmax/VF         //Maximum forward current (in Ampere)
IR = PDmax/VBR           //Breakdwon current that burns out the diode (in Ampere)

//Result

printf("\n Maximum forward current is  %0.3f  A.\nBreakdwon current that burns out the diode is  %0.2f  mA.",IFmax,IR*10**3)
