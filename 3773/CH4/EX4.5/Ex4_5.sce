//Chapter 4: Radiation
//Example 4-5.2
clc;

//Variable Initialization
L = 5         //Length of radiating element (m)
f1 = 30e3     //Frequency (Hz)  
f2 = 30e6     //Frequency (Hz)  
f3 = 15e6     //Frequency (Hz)
c = 3e8       //Velocity of light (m/s)  

//Calculation
wave_lt1 = c/f1                 //Wavelength (m)
wave_lt1 = wave_lt1 /10
R_r1 = 800*(L/wave_lt1)**2      //Radiation resistance (ohm)

wave_lt2 = c/f2                 //Wavelength (m)
L = wave_lt2/2                  //Effective length (m)
R_r2 = 200*(L/wave_lt2)**2      //Radiation resistance (ohm)

wave_lt3 = c/f3                 //Wavelength (m)
L = wave_lt3/4                  //Effective length (m)
R_r3 = 400*(L/wave_lt3)**2      //Radiation resistance (ohm)

//Result
mprintf("The radiation resistance for f1 is %.2f ohms", R_r1)
mprintf("\nThe radiation resistance for f2 is %d ohms",R_r2)
mprintf("\nThe radiation resistance for f3 is %d ohms",R_r3)
