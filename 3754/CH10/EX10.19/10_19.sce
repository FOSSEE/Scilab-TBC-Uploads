clear//

//Variables

I = 50                    //Current (in Ampere)
B = 1.2                   //Magnetic field (in Weber per meter-square)
t = 0.5 * 10**-3          //thickness (in meter)
VH = 100                  //Hall coltage (in volts)
q = 1.6 * 10**-19         //Charge on electron (in Coulomb)

//Calculation

n = B * I / (VH * q * t)  //number of conduction electrons (in per cubic-meter) 

//Result

printf("\n Number of conduction electrons is  %0.3f  m**-3.",n)
