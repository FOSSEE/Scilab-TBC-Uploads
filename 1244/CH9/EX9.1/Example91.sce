
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 9, Example 1")
//Temperature of the tungsten filament in Kelvin
T=1400;

disp("a)Wavelength at which the monochromatic emissive power of the given tungsten filament is maximum in meters")
//Wavelength in m
lamda_max=2.898e-3/T

disp("b)Monochromatic emissive power at calculated maximum wavelength in W/m^3")
//Emissive power in W/m3
Eb_max=12.87e-6*(T^5)

//Given wavelength in meters
lamda=5e-6;
//Product of wavelength and temperature in m-K
lamda_T=lamda*T;

disp("c)Monochromatic emissive power at given wavelength in W/m^3")
//Emissive power in W/m3
Eb_lamda=Eb_max*(2.898e-3/(lamda_T))^5*(((%e^4.965)-1)/((%e^(0.014388/lamda_T)-1)))
disp("Thus ,Monochromatic emissive power at 5e-6 m wavelength is 25.4% of the Monochromatic emissive power at maximum wavelength")
