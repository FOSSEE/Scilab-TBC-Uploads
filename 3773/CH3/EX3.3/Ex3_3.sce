//Chapter 3: The Antenna Family
//Example 3-7.1
clc;

//Variable Initialization
f = 599e6     //Frequency of TV Station (Hz)
E = 1e-6      //Field strength (V/m)
D = 20        //Diameter of antenna (m)
c = 3e8       //Speed of light (m/s)
Z_0 = 377     //Intrinsic impedence of free space (ohm)    

//Calculation
wave_lt = c/f                       //Wavelength (m)
A_e = (D*(wave_lt**2))/(4*%pi)  //Effective aperture (m^2)
P_r = (E**2)*A_e/Z_0                //Received power (W)

//Result
mprintf("The received power is %.2e W", P_r)
