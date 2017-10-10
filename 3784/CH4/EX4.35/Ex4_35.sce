clc
//Variable Initialisation
Ea=400//Input Voltage of motor in volts
Ia=200//Armature Current in Ampere
d=0.5//Duty Ratio
Ra=0.03//Armature resistance in ohm
Rs=0.05
K=3e-3//Motor Constant
//Solution
E0=d*Ea
Pin=E0*Ia//Input power in watt
R=Ra+Rs
Eb=E0-(Ia*R)
Wm=Eb/(K*Ia)
Wmrpm=Wm*30/%pi
T=K*(Ia^2)
printf('\n\n Input Power From Source=%0.1f KW\n\n',Pin*10^-3)
printf('\n\n Motor Speed=%0.1f rpm\n\n',Wmrpm)
printf('\n\n Motor Torque=%0.1f N-m\n\n',T)
