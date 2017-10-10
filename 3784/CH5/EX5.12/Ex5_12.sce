clc
//variable Initialisation
Vm=400 //Terminal Voltage Of Motor In Volt
F=50 //Supply Frequency Of Motor
P=6 //Number Of Pole
R1=0.2 //Resistance Of Motor in Ohm
R2=0.2 //Resistance Of Motor in Ohm
X1=0.5 //Reactance in Ohm
X2=0.5 //Reactance in Ohm
Xm=15 //Reactance In Ohm
S=0.05 //Slip Of Motor

//Solution
Ns=(120*F)/(P) 
Ws=((2*%pi)/60)*(Ns)
Vph=Vm/sqrt(3)
S1=2-S
I2=(Vph)/sqrt(((R1+(R2/S1))^2)+((X1+X2)^2))
Im=Vph/Xm
I1=Im+I2
Tb=((3*((I2)^2))/(Ws))*(R2/S1)
printf('\n\n The Primary Current=%0.1f Amp\n\n',I1)
printf('\n\n The Braking Torque=%0.1f N-m\n\n',Tb)
