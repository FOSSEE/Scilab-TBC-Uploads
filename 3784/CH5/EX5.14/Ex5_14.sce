
clc
//variable Initialisation
Vm=400 //Terminal Voltage Of Motor In Volts
Pout=3 //Output Of Motor In KW
F=50 //Supply Frequency
P=4 //Number Of Pole
R1=2.5 //Resistance Of Motor in Ohm
R2=4.5 //Resistance Of Motor in Ohm
X1=6 //Reactance in Ohm
X2=6 //Reactance in Ohm
Nr1=1400 //Speed Of Rotor In RPM
Nr2=1300 //Speed Of Rotor In RPM

//Solution
Ns=(120*F)/(P)
S=(Ns-Nr1)/Ns
Vph=Vm/sqrt(3)
I2=(Vm)/sqrt(((R1+(R2/S))^2)+((X1+X2)^2))
Ws=((2*%pi)/60)*(Ns)
Tl=((3*((I2)^2))/(Ws))*(R2/S)
K=Tl/((1-S)^2)
S1=(Ns-Nr2)/Ns
Tl1=K*((1-S1)^2)
Vs=sqrt(Tl1*S1*Ws*(((R1+(R2/S1))^2)+((X1+X2)^2))/((3)*(R2)))//Wrongly calculated in textbook
printf('\n\n The Voltage To be Applied=%0.1f Volts\n\n',Vs)
//The answer provided in the textbook is wrong
