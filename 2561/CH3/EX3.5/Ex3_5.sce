//Ex3_5
clc
BF1=100
disp("BF1 = "+string(BF1)+" ") //BJT gain
VCC=20
disp("VCC = "+string(VCC)+" volts") // collector supply voltage 
VBB=VCC
RL=5*(10^3)
disp("resistance,RL= "+string(RL)+ " ohm")  //initialization
RB=965*(10^3)
disp("resistance,RB = "+string(RB)+ " ohm")  //initialization
VBE=(0.7)
disp("VBE = "+string(VBE)+" volts") // value of base-emitter voltage
ICO=10*10^(-9)
disp("ICO = "+string(ICO)+" ampere") // collector reverse bias current
Vi=0
disp("Vi = "+string(Vi)+" volts") // value of input
IBQ=(VCC-VBE)/RB //base current as operating point
disp("IBQ = "+string(IBQ)+" ampere")
ICQ1=BF1*IBQ //operating point (collector current)
disp("ICQ1 =BF1*IBQ= "+string(ICQ1)+" ampere") // calculation
VCEQ1=VCC-ICQ1*RL //  collector-emitter voltage as operating point
disp("VCEQ1 =VCC-ICQ1*RL = "+string(VCEQ1)+" volts") //calculation
