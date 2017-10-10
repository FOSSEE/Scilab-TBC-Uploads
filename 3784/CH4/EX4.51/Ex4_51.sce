clc
//Variable Initialisation
Ia=300//Armature Current in Ampere
Rb=8//Braking resistance in ohm
Ra=0.05//Armature resistance in ohm
Rf=0.08//Field resistance in ohm
d=0.5//Duty Ratio
K=14e-3//Motor Constant
//Solution
E0=(1-d)*Ia*Rb
Pin=(Ia^2)*Rb*(1-d)
R=Ra+Rf
Req=Rb*(1-d)+R
Eb=E0+(Ia*R)
W=Eb/(K*Ia)
Wr=W*30/%pi
Ep=Ia*Rb
printf('\n\n Voltage across Converter=%0.1f Volts\n\n',E0)
printf('\n\n Power dissipated=%0.1f KW\n\n',Pin*10^-3)
printf('\n\n Equivalent Resistance of Motor=%0.1f ohm\n\n',Req)
printf('\n\n Motor Speed=%0.1f rpm\n\n',Wr)
printf('\n\n Peak to Peak Voltage of Converter=%0.1f Volts\n\n',Ep)
