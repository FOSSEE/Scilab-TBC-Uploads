//Ex3_4
//refer fig3.2(a)
clc
VCC=20
disp("VCC = "+string(VCC)+" volts") // collector supply voltage 
VBB=VCC
RL=5*(10^3)
disp("RL= "+string(RL)+ " ohm")  //resistance
RB=965*(10^3)
disp("RB = "+string(RB)+ " ohm")  //initialization base resistance
VBE=(0.7)
disp("VBE = "+string(VBE)+" volts") // value of base-emitter voltage
BF=50
disp("BF = "+string(BF)+" ") //BJT gain
ICO=10*10^(-9)
disp("ICO = "+string(ICO)+" ampere") // collector reverse bias current
Vi=0
disp("Vi = "+string(Vi)+" volts") // value of input
IBQ=(VCC-VBE)/RB //base current as operating point
disp("IBQ = "+string(IBQ)+" ampere")
ICQ=BF*IBQ //operating point (collector current)
disp("ICQ =BF*IBQ= "+string(ICQ)+" ampere") // calculation
VCEQ=VCC-ICQ*RL //  collector-emitter voltage as operating point
disp("VCEQ =VCC-ICQ*RL = "+string(VCEQ)+" volts") //calculation
