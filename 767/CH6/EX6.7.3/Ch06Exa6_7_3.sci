// Scilab code Exa6.7.3 : To calculate the magnetic field applied to cyclotron whose frequency is given. Page 271(2011)
q = 1.6e-019; // Charge of the proton, C
r = 0.60; // radius of the dees, m
m = 1.67e-027; // Mass of the proton, Kg
f = 10^6; // Frequecy of the proton,Hz
B = 2*%pi*m*f/q; // Magnetic field applied to cyclotron, tesla
printf("\nMagnetic field applied to cyclotron :  %6.4f tesla ", B)
// Result
//    Magnetic field applied to cyclotron :  0.0656 tesla