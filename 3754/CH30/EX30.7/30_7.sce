clear//

//Variables

VDD = 20.0                        //Supply voltage (in volts)
RD = 2.5 * 10**3                  //Drain resistance (in ohm)
RS = 1.5 * 10**3                  //Source resistance (in ohm)
R1 = 2.0 * 10**6                  //Resistance (in ohm)
R2 = 250.0 * 10**3                //Resitance (in ohm)
ID = 4.0 * 10**-3                 //Drain current (in Ampere) 

//Calculation

VG = VDD * R2 / (R1 + R2)         //Gate voltage (in volts)
VS = ID * RS                      //Source voltage (in volts)
VGS = VG - VS                     //Gate-to-source voltage (in volts)
VD = VDD - ID * RD                //Drain voltage (in volts)   

//Result

printf("\n Value of VGS is  %0.1f  V. and value of VDS is  %0.3f  V.",VGS,VD-VS)
