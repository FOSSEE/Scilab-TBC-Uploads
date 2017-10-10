//Chapter 23: Ground Wave Propagation
//Example 23-5.1
clc;

//Variable Initialization
f1 = 5e3        //Frequency (Hz)
f2 = 50e3        //Frequency (Hz)
f3 = 500e3        //Frequency (Hz)
sigma = 5e-5    //Standard deviation of surface irregularities (unitless)
eps_r = 15.0      //Relative permittivity (unitless)
mu = %pi*4e-7    //Absolute Permeability (H/m)

//Calculations
w1 = 2*%pi*f1    //Angular frequency (rad/s)
w2 = 2*%pi*f2    //Angular frequency (rad/s)
w3 = 2*%pi*f3    //Angular frequency (rad/s)


Zs1 = sqrt((w1*mu)/sqrt(sigma**2 + (w1**2)*eps_r))               //Surface impedence for f1 (ohm)
Zs2 = sqrt((w2*mu)/sqrt(sigma**2 + (w2**2)*eps_r))               //Surface impedence for f2 (ohm)
Zs3 = sqrt((w3*mu)/sqrt(sigma**2 + (w3**2)*eps_r))               //Surface impedence for f3 (ohm)

//Result
mprintf( "The surface impedence for 5kHz is %.5f ohms",Zs1)
mprintf( "\nThe surface impedence for 50kHz is %.5f ohms", Zs2)
mprintf( "\nThe surface impedence for 500kHz is %.5f ohms", Zs3)

//An error has been made in calculation/substitution of square root of
//(sigma**2 + (w1**2)*eps_r) and in the second case, the mistake in the calculation of (w2*mu)/sqrt(sigma**2 + (w2**2)*eps_r)
