clc
//variable initialisation
Vm=400 //Supply Voltage in volt
F=50 //supply frequency in hrtz
P=6 //Number Of Poles
R1=0.15 //resistance of stator in ohm
R2=0.15 //resistance of rotor in ohm
X1=0.8 //reactance of Motor in ohm
X2=0.8 //reactance of Motor in ohm
S=0.04 //Slip Of Motor

//Solution
Ns=(120*F)/P
Ws=((2*%pi)/60)*1000
Sr=2-S
Vph=Vm/(sqrt(3))
I2=Vph/(sqrt(((R1+(R2/((2-S))))^2)+((X1+X2)^2)))
Tsb=(3*((I2)^2)*(R2/(2-S)))/(Ws)
printf('\n\n The Initial Braking Torque=%0.1f N-m\n\n',Tsb)
