//Ex9_1
clc
VCC=5
disp("VCC= "+string(VCC)+" volts") //  voltage supply  
RB=10*10^(3)
disp("RB= "+string(RB)+ " ohm")  // Base-resistance
RL=1*10^(3)
disp("RL= "+string(RL)+ " ohm")  // Load resistance
VCS=0.2
disp("VCS= "+string(VCS)+" volts") // collector saturated voltage 
VBS=0.8
disp("VBS= "+string(VBS)+" volts") // Base voltage at saturation 
V_gamma=0.6
disp("V_gamma= "+string(V_gamma)+" volts") //  Threshold or cut-in voltage
ICS=(VCC-VCS)/RL
disp("ICS = (VCC-VCS)/RL="+string(ICS)+" ampere") //Saturation collector current of transistor T1
vi=5
disp("vi= "+string(vi)+" volts") //  Input voltage 
IBS=(vi-VBS)/RB
disp("IBS=(vi-VBS)/RB="+string(IBS)+" ampere") // Forward base drive required to sustain ICS
Beta_Fmin=ICS/IBS
disp("Beta_Fmin=ICS/IBS= "+string(Beta_Fmin)) // Common-emitter current gain

//NOTE:  Correct formulae for ICS=(VCC-VCS)/RL
// but in book it is written wrong as ICS=(VCC-VCS)/RB but had calculated ans (in book) according to correct formulae ICS=(VCC-VCS)/RL
