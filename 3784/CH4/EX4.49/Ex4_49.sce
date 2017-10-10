clc
//Variable Initialisation
Ea=500//Input Voltage of motor in volts
d1=0.65//Duty Ratio
Ra=0.06//Armature resistance in ohm
Ia=300//Armature Current in Ampere
Rf=0.08//Field resistance in ohm
K=15.27e-3//Motor Constant
//Solution
E0=(1-d1)*Ea
R=Ra+Rf
Req=(1-d1)*(Ea/Ia)+R
Pgen=E0*Ia
Wmin=R/K
Wminr=Wmin*(30/%pi)
Wmax=(Ea/(K*Ia))+(R*Ia/(K*Ia))
Wmaxr=Wmax*(30/%pi)
Eb=E0+(Ia*Ra)
W=Eb/(K*Ia)
Wr=W*(30/%pi)
printf('\n\n Voltage across Chopper=%0.1f Volts\n\n',E0)
printf('\n\n Equivalent Resistance of Motor=%0.1f ohm\n\n',Req)
printf('\n\n Power Generated=%0.1f KW\n\n',Pgen*10^-3)
printf('\n\n Maximum Permissible Braking Speed=%0.1f rpm\n\n',Wmaxr)
printf('\n\n Minimum Permissible Braking Speed=%0.1f rpm\n\n',Wminr)
printf('\n\n Motor Speed=%0.1f rpm\n\n',Wr)
