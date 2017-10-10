clc
//Variable Initialisation
Ea=500//Input Voltage of motor in volts
Ra=0.06//Armature resistance in ohm
Rf=0.09//Field resistance in ohm
K=12e-3//Motor Constant
Ia=400//Armature Current in Ampere
d1=0.6//Duty Ratio
//Solution
E0=(1-d1)*Ea
Pin=E0*Ia
R=Ra+Rf
Req=(E0/Ia)+R
Wmin=R/K
Wminr=Wmin*30/%pi
Wmax=(R/K)+(Ea/(K*Ia))
Wmaxr=Wmax*30/%pi
Eb=E0+(Ia*R)
W=Eb/(K*Ia)
Wr=W*30/%pi
printf('\n\n Voltage across Converter=%0.1f Volts\n\n',E0)
printf('\n\n Power Generated=%0.1f KW\n\n',Pin*10^-3)
printf('\n\n Equivalent Resistance of Motor=%0.1f ohm\n\n',Req)
printf('\n\n Maximum Permissible Braking Speed=%0.1f rpm\n\n',Wmaxr)
printf('\n\n Minimum Permissible Braking Speed=%0.1f rpm\n\n',Wminr)
printf('\n\n Motor Speed=%0.1f rpm\n\n',Wr)