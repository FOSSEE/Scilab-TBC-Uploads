//Ex4_3
clc
ID=10*10^(-3)
disp("ID = "+string(ID)+" ampere") //  given drain current 
VDD=(24)
disp("VDD= "+string(VDD)+" volts") // Drain voltage 
VT=(5)
disp("VT= "+string(VT)+" volts") // Threshold voltage 
VGS=(10)
disp("VGS= "+string(VGS)+" volts") // gate to source voltage1 
KF=ID/(VGS-VT)^2
disp("KF = ID/(VGS-VT)^2 = "+string(KF)+" A/V^2") // To calculate Scale factor for finding ID2
VDS=(7)
disp("VDS =VGS= "+string(VDS)+" volts") // drain to source voltage 
VGS=(VDS)
ID=KF*(VGS-VT)^2
disp("ID =KF*(VGS-VT)^2= "+string(ID)+" ampere") // New drain current for VDS=24V
RL=(VDD-VDS)/ID
disp("RL=(VDD-VDS)/ID= "+string(RL)+ " ohm")  //calculation for load resistance at VDS=24V

