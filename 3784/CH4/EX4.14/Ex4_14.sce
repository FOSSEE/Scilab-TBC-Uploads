clc
//Variable Initialisation
Ea=450//Input Voltage of motor in volts
Ra=0.06//Armature resistance in ohm
Kt=1.4//Motor Voltage Constant
Ia=300//Armature Current in Ampere
If=3.3//Motor Field Current in Amp
d=0.7//Duty cycle of Converter
//Solution
Pin1=Kt*Ea*Ia//Input Power
Re1=Ea/(Kt*Ia)//Equivalent Resistance
E01=Kt*Ea
Eb1=E01-(Ia*Ra)

Pin2=d*Ea*Ia
Re2=Ea/(d*Ia)
E02=d*Ea
Eb2=E02-(Ia*Ra)
N1=Eb2/(Kt*If)
N=N1*60/(2*%pi)
T=Kt*Ia*If
printf('\n\n Input Power=%0.1f KW\n\n',Pin1*10^-3)
printf('\n\n Equivalent Resistance developed=%0.1f ohm\n\n',Re1)
printf('\n\n Motor Speed=%0.1f rpm\n\n',N)
printf('\n\n Motor Torque=%0.1f N-m\n\n',T)
