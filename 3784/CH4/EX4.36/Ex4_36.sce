clc
//Variable Initialisation
Ea=400//Input Voltage of motor in volts
Ia=200//Armature Current in Ampere
Ra=0.05//Armature resistance in ohm
Rs=0.07
d=0.5//Duty Ratio
K=5e-3//Motor Constant
//Solution
E0=d*Ea
Pin=E0*Ia
Wm=((E0-Ia*(Ra+Rs))/(K*Ia))*(30/%pi)
T=K*(Ia^2)
printf('\n\n Input Power From Source=%0.1f KW\n\n',Pin*10^-3)
printf('\n\n Motor Speed=%0.1f rpm\n\n',Wm)
printf('\n\n Motor Torque=%0.1f N-m\n\n',T)
