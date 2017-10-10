clc
//Variable Initialisation
Ea=440//Input Voltage of motor in volts
d=0.5//Duty Ratio
Ia=200//Armature Current in Ampere
Ra=0.15//Armature resistance in ohm
K=1//Motor Constant
//Solution
E0=(1-d)*Ea
Pr=E0*Ia
Wmin1=(Ia*Ra)/K
Wmin=Wmin1*60/(2*%pi)
Wmax1=(Ea+(Ia*Ra))/K
Wmax=Wmax1*60/(2*%pi)
Eb=E0+(Ia*Ra)
Wm1=Eb/K
Wm=Wm1*60/(2*%pi)
printf('\n\n The Power Returned=%0.1f KW\n\n',Pr*10^-3)
printf('\n\n Minimum braking Speed=%0.1f rpm\n\n',Wmin)
printf('\n\n Maximum braking Speed=%0.1f rpm\n\n',Wmax)//The answers vary due to round off error
printf('\n\n Speed during Regenerative Braking=%0.1f rpm\n\n',Wm)
