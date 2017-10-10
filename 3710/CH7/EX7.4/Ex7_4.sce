//Example 7.4, Page Number 311
//Noise in photomultipliers
clc;

T=300 //Temperature in Kelvin
lr=10**3 //Load resistor in ohms
bw=10**3 //Bandwidth in hertz
k=1.38*(10**-23) //Boltzman Constant in meter square kilogram per second square Kelvin
i=10**-14 //Photomultiplier current in Amperes
e=1.6*(10**-19) //Charge of an electron in Coulombs
g=10**7 //Photomultiplier Gain

//From equation 7.14
V=sqrt(4*k*T*bw) //V is the shot noise voltge

//From equation 7.12
is=sqrt(2*i*e*bw) //is is the shot noise current in Amperes

V1=is*g*lr //V1 is the voltage observed across load resistance

mprintf("The RMS Value of the Voltage is:%.1e V\n",V)
mprintf(" The Shot Noise Current is:%.1e A\n",is)
mprintf(" The Shot Noise Voltage across load resistor is:%.1e V",V1)
