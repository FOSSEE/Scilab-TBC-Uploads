clc
//Variable Initialisation
Ea=210//Input Voltage of motor in volts
Ia1=140//Armature Current in Ampere
Ia2=2*Ia1
Ra=0.08//Armature resistance in ohm
N1=1100//Rated Speed of Motor in rpm
N2=1200//Rated Speed of Motor in rpm
//Solution
Eb1=Ea-(Ia1*Ra)
Eb2=(N2/N1)*Eb1
Rb=((Eb2+Ea)/Ia2)-Ra
W=(2*%pi*N2)/60
T1=(Eb2*Ia2)/W
Ia3=Ea/(Ra+Rb)
T2=T1*(Ia3/Ia2)
printf('\n\n Resistance to be placed=%0.1f ohm\n\n',Rb)
printf('\n\n Braking torque=%0.1f N-m\n\n',T1)
printf('\n\n torque=%0.1f N-m\n\n',T2)//The answers vary due to round off error
