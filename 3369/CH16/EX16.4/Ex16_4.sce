//Chapter 16,Example 4, page 558
//Determine the input voltage and power
clear
clc
Vc = 500*10^3 // V
A = 4 // A
Xl = 8/100 // in percentage 
kV = 250
Xc = Vc/A // Reactance of the cable
XL = Xl*(kV**2/100)*10**3 // Leakage reactance of the transformer
Radd = Xc-XL // Additional series reactance
Ind = Radd/(2*%pi*XL) // Inductance of required series inductor
R = 3.5/100*(kV**2/100)*10**3  // Total circuit resistance
Imax = 100/250 // maximum current that can be supplied by the transformer
Vex = Imax*R // Exciting voltage of transformer secondary
Vin = Vex*220/kV // Input voltage of transformer primary
P = Vin*100/220 // Input power of the transformer
printf("\n Reactance of the cable = %f k ohm", Xc*10^-3)
printf("\n Leakage reactance of the transformer = %f k ohm", XL*10^-3)
printf("\n Additional series reactance = %f k ohm", Radd*10^-3)
printf("\n Inductance of required series inductor = %f H", Ind*10^3)
printf("\n Total circuit resistance = %f k ohm", R*10^-3)
printf("\n maximum current that can be supplied by the transformer = %f A", Imax)
printf("\n Exciting voltage of transformer secondary = %f kV", Vex*10^-3)
printf("\n Input voltage of transformer primary = %f V", Vin*10^-3)
printf("\n Input power of the transformer = %f kW", P*10^-3)

// Answers may vary due to round off error

