//Ex2_9
clc
Vi1=0.2
disp("input voltage,Vi1 = "+string(Vi1)+" volts") //initialization
VD=0.7
disp(" voltage drop,VD = "+string(VD)+" volts") //initialization
RL=5*(10^3)
disp("resistance,RL = "+string(RL)+ " ohm") //initialization
Vcc=5
disp("Supply voltage,Vcc = "+string(Vcc)+" volts")
V01=VD+Vi1 //Formulae
disp("output voltage ,V01 ==VD+Vi1 = "+string(V01)+" volts") 
IL1=(Vcc-V01)/RL //Formulae
disp(" output current ,IL1=IL1=(Vcc-V01)/RL = "+string(IL1)+" ampere") // calculation
Vi2=5
disp("input voltage,Vi2 = "+string(Vi2)+" volts") //initialization
V02=3*VD //Formulae
disp("output voltage ,V02 =3*VD= "+string(V02)+" volts")
IL2=(Vcc-V02)/RL //Formulae
disp(" output current ,IL2= IL2=(Vcc-V02)/RL = "+string(IL2)+" ampere") // calculation
VAK=V02-Vi2 //Formulae
disp(" Diode voltage ,VAK = V02-Vi2 = "+string(VAK)+" volts")

//NOTE:correct value of IL2=0.58 mA but in book given as 0.592mA
