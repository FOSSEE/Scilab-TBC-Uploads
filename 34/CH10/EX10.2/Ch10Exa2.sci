 
A= 1; //cross-sectional area of wire, mm^2
I= 1; //current in wire, A
n= 8.5*(10^28); // electrons/m^3
e= 1.6*(10^(-19)); //charge of an electron, C
Vdrift= I/(n*(A*(10^(-6)))*e); //m/s
disp(Vdrift,"The drift velocity of electrons in the copper wire, in m/s, is: ")
 
//Result
// The drift velocity of electrons in the copper wire, in m/s, is:    
//    0.0000735 