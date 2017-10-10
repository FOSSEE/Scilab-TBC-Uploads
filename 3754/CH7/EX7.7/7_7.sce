clear//

//Variables

k = 5.0                   //dielectric constant
A = 0.04                  //Plate area (in meter-square)
d = 0.02                  //Thickness of dielectric(in meter) 
eps0 = 8.85 * 10**-12     //Absolute permittivity (in kg*m**3*s**-3*A**-2)

//Calculation

C = eps0 * k * A / d      //Capacitance (in Farad)   

//Result

printf("\n Capacitance of parallel plate capacitor is  %0.3f pF." ,C * 10**12)
