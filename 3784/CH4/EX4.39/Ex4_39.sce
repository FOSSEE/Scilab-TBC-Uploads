clc
//Variable Initialisation
Ea=600//Input Voltage of motor in volts
Ia=500//Armature Current in Ampere
d1=0.6//Duty Ratio
Ra=0.05//Armature resistance in ohm
Rf=0.07//Field Resistance in ohm
K=15.27e-3//Motor Constant
//Solution
E0=d1*Ea
Pin=E0*Ia
Re=Ea/(Ia*d1)
Eb=E0-(Ia*(Ra+Rf))
W=Eb/(Ia*K)
N=W*60/(2*%pi)
T=K*(Ia^2)
printf('\n\n Input Power From Source=%0.1f KW\n\n',Pin*10^-3)
printf('\n\n Equivalent Output Resistor=%0.1f ohm\n\n',Re)
printf('\n\n Motor Speed=%0.1f rpm\n\n',N)
printf('\n\n Motor Torque=%0.1f N-m\n\n',T)
