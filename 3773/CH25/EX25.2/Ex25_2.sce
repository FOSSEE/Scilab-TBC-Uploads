//Chapter 25: Sky Wave Propagation
//Example 25-5.2
clc;

//Variable Initialization
fE = 3e6        //Critical frequency for E layer (Hz)
fF1 = 5e6       //Critical frequency for F1 layer (Hz)
fF2 = 9e6       //Critical frequency for F2 layer (Hz)

//Calculations
N_E = (fE**2)/81    //Concentration of electrons in E layer (per cubic cm)
N_F1 = (fF1**2)/81 //Concentration of electrons in F1 layer (per cubic cm)
N_F2 = (fF2**2)/81 //Concentration of electrons in F2 layer (per cubic cm)

//Result
mprintf( "The concentration of electrons in E layer is %e per cubic cm",N_E)
mprintf( "\nThe concentration of electrons in F1 layer is %e per cubic cm", N_F1)
mprintf( "\nThe concentration of electrons in F2 layer is %e per cubic cm", N_F2)
