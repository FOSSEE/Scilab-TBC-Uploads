//Ex3_9
clc
VCC=5
disp("VCC = "+string(VCC)+" volts") // collector supply voltage 
RL=250
disp("RL= "+string(RL)+ " ohm")  //initialization
RB=25*10^(3)
disp("RB ="+string(RB)+ " ohm") //  base resistance
VCS=(0.2)
disp("VCS = "+string(VCS)+" volts") //   voltage
BF=200
disp("BF = "+string(BF)+" ") //BJT gain
VBS=(0.8)
disp("VBS = "+string(VBS)+" volts") //  base-emitter voltage for BJT switch
VI=5
disp("VI = "+string(VI)+" volts")// input voltage
VCON=0.3
disp("VCON = "+string(VCON)+" volts")
ICON=(VCC-VCON)/RL
disp("ICON = (VCC-VCON)/RL="+string(ICON)+" ampere")//collector current for saturated BJT
IBON=(ICON)/BF
disp("IBON = (ICON)/BF="+string(IBON)+" ampere")//Base current for saturated BJT
IBS=(VI-VBS)/RB
disp("IBS = (VI-VBS)/RB="+string(IBS)+" ampere")//Base-emitter current for  saturated BJT
ICS=(VCC-VCS)/RL
disp("ICS = (VCC-VCS)/RL="+string(ICS)+" ampere")//Collector-emitter current for  saturated BJT
Bforced=ICS/IBS
disp("Bforced = ICS/IBS="+string(Bforced)+" ") //BJT forced gain
//IBS>>IBON hence BJT in saturation



