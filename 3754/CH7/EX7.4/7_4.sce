clear//

//Variables

N = 150.0                       //Number of turns
mur = 3540.0                    //Relative permeability (in H/m)
mu0 = 4*%pi * 10 **-7       //Absoulte permeability (in H/m)
l = 0.05                        //coil length (in meter)
A = 5 * 10**-4                  //Area of cross - section (in metersquare)

//Calculation

L = (mur * mu0 * A * N**2)/l    //Coil inductance (in Henry)

//Result

printf("\n The coil inductance is  %0.2f  Henry.",L)
