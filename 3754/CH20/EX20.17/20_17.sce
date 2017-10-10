clear//

//Variables

IZmin = 0                     //Minimun Zener current (in Ampere)
ILmax = 2.0                   //Maximum load current (in Ampere)
VL = 12.0                     //Voltage across load (in volts)
VSmin = 15.0                  //Minimum Input voltage (in volts)
VSmax = 20.0                  //Maximum Input Voltage (in volts)
beta = 100                    //common emitter current gain
VBE = 0.5                     //Voltage between base-emitter junction (in volts)
VZ = 12.5                     //Voltage across zener diode (in volts)
IZmin = 1.0 * 10**-3          //Current through Zener diode   
ICmax = ILmax                 //Maximum Collector current (in Ampere) 

//Calculation

IBmax = ICmax / beta          //Maximum collector current
IR = IBmax + IZmin            //Current through resistance R (in Ampere)
Rmax = (VSmin - VZ)/ IR       //Maximum value of resistance R (in ohm)
IZmax = (VSmax - VZ)/ Rmax    //Maximum value of Zener current (in Ampere)
PZmax = VZ * IZmax            //Maximum power dissipation in Zener Diode (in watt)
PRmax = (VSmax - VZ) * IZmax  //Maximum power dissipated in Resistance R (in watt)
VCEmax = VSmax - VL           //Maximum value of collector-to-emitter voltage (in volts)      
PDmax = VCEmax * ILmax        //Maximum power dissipation of the transistor (in watt)

//Result

printf("\n Maximum value of R is  %0.0f  ohm.\nMaximum power dissipation of the zener diode is  %0.2f  W.\nMaximum power dissipation of resistance R is  %0.2f  W.\nMaximum power dissipation of the transistor is  %0.3f  W.",Rmax,PZmax,PRmax,PDmax)
