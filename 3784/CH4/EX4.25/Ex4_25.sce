clc
//Variable Initialisation
Ia=180//Armature Current in Ampere
Ra=0.06//Armature resistance in ohm
Rb=8
If=2//Field Current in Ampere
d=0.5
K=1.527
//Solution
E0=Ia*Rb*(1-d)
Req=Rb*(1-d)+Ra
Pb=(Ia^2)*(Rb*(1-d))
Eb=E0+(Ia*Ra)
W=Eb/(K*If)
W1=(W*60)/(2*%pi)
Ep=Ia*Rb
printf('\n\n The Average Voltage across chopper=%0.1f Volts\n\n',E0)
printf('\n\n Equivalent Resistance of motor=%0.1f ohm\n\n',Req)
printf('\n\n Power dissipated in braking resistor=%0.1f KW\n\n',Pb*10^-3)
printf('\n\n The Motor Speed=%0.1f rpm\n\n',W1)
printf('\n\n Peak to Peak Voltage=%0.1f Volts\n\n',Ep)
