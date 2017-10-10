//Example 9.1, Page Number 449
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Signal to Noise Ratio Calculation
clc;
//For Given P-I-N Diode
q=0.6 //Quantam Efficiency
l=1.3*(10**-6) //Wavelength in Meters
i=3*(10**-9) //Reverse Bias Leakage Current in Ampere
r=50 //Resistance in Ohm
b=500*(10**6) //Bandwidth in Hertz
P=10*(10**-6) //Optical Power in Watt
e=1.6*(10**-19) //Charge of an Electron in Coulombs
h=6.6*(10**-34) //Plancks Constant in meter square kilogram per second
c=3*(10**8)  //Speed Of Light in meters per second
k=1.38*(10**-23) //Boltzmann Constant in meter square kilogram per second square Kelvin
c1=1*(10**-12) //Assumed Capacitance in Farad

ip=(q*P*e*l)/(h*c)  //i is the Photogenerated current in Amperes
disp(ip,"The Photogenereated Current in A is:");

itotal=sqrt(2*(i+ip)*e*b) //itotal is the Total Shot Noise Current in Amperes
disp(itotal," The Total shot noise Current in A is:");

ij=sqrt(4*k*r*b*300)/r //ij is the Total Johnson Noise Current in Amperes
disp(ij," The Total Johnson Noise Current in A is:");

sn=(ip**2)/((itotal**2)+(ij**2)) //sn is the Signal to Noise Ratio in Decibel
disp(sn," The Required Signal to Noise ratio in dB is:");

rl=1/(2*%pi*c1*b) //rl is the optimum Load Resistance in ohms
rl=fpround(rl,1)
disp(rl," The Optimum Load Resistance in ohms:");

ij2=sqrt(4*k*rl*b*300)/rl
mprintf("\n  The Optimum Johnson Noise Current in A is reduced to:\n\n    %.2e\n",ij2)

sn1=(ip**2)/((itotal**2)+(ij2**2))
disp(sn1," The Signal to Noise Ratio increases to:");
