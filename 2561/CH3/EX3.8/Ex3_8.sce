//Ex3_8
clc
VCC=20
disp("VCC = "+string(VCC)+" volts") // collector supply voltage 
RL=2*(10^3)
disp("RL= "+string(RL)+ " ohm")  //resistance
R1=100*(10^3)
R2=R1
disp("R1 =R2= "+string(R1)+ " ohm")  //resistance
VBE=(0.7)
disp("VBE = "+string(VBE)+" volts") //  base-emitter voltage
BF=100
disp("BF = "+string(BF)+" ") //BJT gain
ICO=0
VBB=(VCC*R2)/(R1+R2)
disp("VBB = "+string(VBB)+" volts") // Base supply voltage 
RB=(R1*R2)/(R1+R2)
disp("RB = (R1*R2)/(R1+R2)="+string(RB)+ " ohm") // eqivalent base resistance
IC=[(BF*(VBB-VBE))/(RB+RL*(1+BF))] // collector  current
disp("IC = "+string(IC)+" ampere")
VE=IC*RL
disp("VE = "+string(VE)+" volts") //  emitter voltage
VB=VBE+VE
disp("VB = "+string(VB)+" volts") //  base voltage
VCB=VCC-VB
disp("VCB = "+string(VCB)+" volts") //  collector-base voltage
//hence BJT in active region.
