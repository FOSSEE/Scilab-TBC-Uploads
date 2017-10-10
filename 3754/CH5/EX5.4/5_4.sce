clear//

//Variables

V = 25          //Source voltage (in volts)
RB = 99         //Resistance (in kilo-ohm)
RC = 2          //Resistance (in kilo-ohm)
RE = 1          //Resistance (in kilo-ohm)
VCE = 5         //Voltage across C and E (in volts)

//Calculation

//Applying Kirchoff's Voltage law:
//IB*RB + VBE + IE*RE -V = 0
//IB*RB + VBE + (IB + IC)*RE - VCC = 0
//100*IB + IC = 24
//IB + 3*IC = 20
IC = 1976.0/299
IB = 20 - (3 * 6.61)

//Result

printf("\n Value of IB is  %0.3f  mA.\nValue of IC is  %0.3f  mA.",IB,IC)
