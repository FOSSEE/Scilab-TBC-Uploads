//Ex3_6
clc
VBE2=(0.5)
disp("VBE2 = "+string(VBE2)+" volts") // value of base-emitter voltage
VCC=20
disp("VCC = "+string(VCC)+" volts") // collector supply voltage 
BF2=150
disp("BF2 = "+string(BF2)+" ") //BJT gain
ICO2=500*10^(-9)
disp("ICO2 = "+string(ICO2)+" ampere") // collector reverse bias current
RB=965*(10^3)
disp("RB = "+string(RB)+ " ohm")  //initialization base resistance
RL=5*(10^3)
disp("RL= "+string(RL)+ " ohm")  // load resistance
IBQ2=(VCC-VBE2)/RB   //base current as operating point
disp("IBQ2 = (VCC-VBE2)/RB="+string(IBQ2)+" ampere")
ICQ2=(BF2*IBQ2)   //operating point (collector current)
disp("ICQ2 =BF2*IBQ2= "+string(ICQ2)+" ampere") // 
dICQ2=BF2*ICO2  // increase in reverse bias current
disp("dICQ2 =BF2*ICO2= "+string(dICQ2)+" ampere") // 
ICQ3=ICQ2+dICQ2
disp("ICQ3 =ICQ2+dICQ2= "+string(ICQ3)+" ampere") // calculation
VCEQ3=VCC-ICQ3*RL //  collector-emitter voltage as operating point
disp("VCEQ3 =VCC-ICQ3*RL = "+string(VCEQ3)+" volts") //calculation
//NOTE: Calculated ans for VCEQ3=4.4695596 volts but in book it is given as 4.625volts(due to approximations done in)   
    
 
