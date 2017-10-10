clc
//Variable Initialisation
Ea=500//Input Voltage of motor in volts
Ra=0.06//Armature resistance in ohm
Rf=0.09//Field Resistance in ohm
K=35e-3//Motor Constant
T=560//Rated Torque in N-m
N1=0//Rated Speed of Motor in rpm
d2=1//Duty ratio
//Solution
Ia=sqrt(T/K)//Armature Current in Ampere
d1=(Ia*(Ra+Rf)+K*Ia*N1)/Ea
N2=(d2*Ea-Ia*(Ra+Rf))/(K*Ia)
N2rpm=N2*30/%pi
d3=0.6
N3=((d3*Ea-Ia*(Ra+Rf))/(K*Ia))*30/%pi
d4=0.8
N4=((d4*Ea-Ia*(Ra+Rf))/(K*Ia))*30/%pi
d=[d1,d3,d4,d2]
N=[N1,N3,N4,N2rpm]
plot(d,N)
ylabel("Speed in rpm", "fontsize", 2)
xlabel("Duty Ratio", "fontsize", 2)
