clc
//variable Initialisation
Vm=400 //Terminal Voltage Of Motor In Volt
F=50 //Supply Frequency
P=6 //Number Of Pole
R1=1.5 //Resistance Of Motor in Ohm
R2=1.5 //Resistance Of Motor in Ohm
X1=2.5//Reactance in Ohm
X2=2.5//Reactance in Ohm
Nr1=900 //Speed Of Rotor In RPM
Nr2=400 //Speed Of Rotor In RPM

//Solution
Vph=Vm/sqrt(3)
Ns=(120*F)/(P)
S=(Ns-Nr1)/Ns
I2=(Vph)/sqrt(((R1+(R2/S))^2)+((X1+X2)^2))
Ws=((2*%pi)/60)*(Ns)
T=((3*((I2)^2))/(Ws))*(R2/S)
//At Braking
Sb=2-S
I2b=(Vph)/sqrt(((R1+(R2/Sb))^2)+((X1+X2)^2))
Tb=((3*((I2b)^2))/(Ws))*(R2/Sb)
S1=(Ns+Nr2)/Ns
I3=(Vph)/sqrt(((R1+(R2/S1))^2)+((X1+X2)^2))
T1=((3*((I3)^2))/(Ws))*(R2/S1)
printf('\n\n The Full load Torque=%0.1f N-m\n\n',T)
printf('\n\n The Initial braking Torque=%0.1f N-m\n\n',Tb)
printf('\n\n The braking Torque at 400 rpm=%0.1f N-m\n\n',T1)
