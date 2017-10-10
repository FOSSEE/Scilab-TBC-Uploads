//Chapter 23: Ground Wave Propagation
//Example 23-7.1
clc;

//Variable Initialization
f = 2.0       //Frequency (MHz)
sigma = 5e-5    //Standard deviation of surface irregularities (unitless)
eps_r = 15.0      //Relative permittivity (unitless)
d = 20e3        //Distance (m)
eff = 0.5       //Antenna efficiency (unitless)
c = 3e8         //Speed of light (m/s)
E1 = 0.5e-3     //Ground wave electric field strength (V/m)

//Calculations
wave_lt = c/(f*10**6)       //Wavelength (m)
x = (18e3)*sigma/f  //Parameter x (unitless)

b = atan((eps_r + 1)/x)     //Phase constant (unitless)

p = (%pi/x)*(d/wave_lt)*cos(b)    //Numerical distance (unitless)

A = (2 + 0.3*p)/(2 + p + 0.6*(p**2))    //Reduction factor (unitless)

E_t = E1 * d/A

//Result
mprintf("The Electric field strength at the transmitted end is %.2f V/m", E_t)
