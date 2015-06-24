//Ex2_2
//refer to fig 2.1(c) ,fig.2.3(b) and fig.2.3(c)
clc
VF=5
disp("source voltage,VF = "+string(VF)+ " volts")//initialization
VD=0.7
disp("voltage drop,VD = "+string(VD)+ " volts")//initialization
R=5*10^(3)
disp("resistance,R = "+string(R)+ "ohm")//initialization
RF=100
disp("resistance,R = "+string(RF)+ "ohm")//initialization
VR=0.6
disp("VR = "+string(VR)+ " volts")//initialization
IA=(VF-VD)/R //formulae
disp("Diode current ,IA = "+string(IA)+" ampere") // calculation
IA=(VF-VR)/(R+RF)// Formulae
disp(" using large signal model,IA = "+string(IA)+" ampere") // calculation
VAK=(VR+IA*RF)// Formulae
disp("Junction voltage,VAK ="+ string(VAK)+" volts")//calculation
