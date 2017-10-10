clear//

//Variables

k = 1200.0                   //dielectric constant
A = 0.2                      //Plate area (in meter-square)
eps0 = 8.85 * 10**-12        //Absolute permittivity (in kg*m**3*s**-3*A**-2)
C = 0.428                    //Capacitance (in micro-farad)

//Calculation

d = eps0 * k * A / C         //thickness of dielectric (in meter)
 
//Result

printf("\n Thickness of dielectric is  %0.2f  mm.",d * 10**9)
