clc
//variable Initialisation
Vl=440//Voltage Input in Volts
f1=50//supply frequency in Hz
P=25e+3//power rating in Watts
N1=950//Rotor Speed in rpm
Z=0.1+(%i*3)//Rotor Impedance
pole=6//No of poles
f2=80//Supply 2 frequency in Hz
//Solution
V=Vl/sqrt(3)//Phase Voltage in Volts
Wm=2*%pi*N1/60
Tfl=P/Wm//Full load Torque in N-m
Ns=120*f2/pole
Ws=2*%pi*Ns/60
Z2=Z*(f2/f1)//Rotor Impedance at 80 Hz
S=3*(V^2)*0.5/(Ws*((abs(Z2))^2)*Tfl)
Nr=Ns*(1-S)
Rl=real(Z)
Xl=imag(Z2)
Smax=(Rl/Xl)
Tmax=3*(V^2)/(Ws*2*Xl)
printf('\n\n The Motor speed=%0.1f rpm\n\n',Nr)//The answers vary due to round off error
printf('\n\n The Slip at which maximum torque occurs=%0.1f\n\n',Smax)
printf('\n\n The maximum Torque=%0.1f\n\n',Tmax)
