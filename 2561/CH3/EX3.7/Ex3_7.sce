//Ex3_7
clc
VCC=20
disp("VCC = "+string(VCC)+" volts") // collector supply voltage 
RL=5*(10^3)
disp("resistance,RL= "+string(RL)+ " ohm")  //initialization
R1=90*(10^3)
disp("resistance,R1 = "+string(R1)+ " ohm")  //initialization
R2=10*(10^3)
disp("resistance,R2 = "+string(R2)+ " ohm")  //initialization 
Rc=1*(10^3)
disp("resistance,Rc = "+string(Rc)+ " ohm")  // resistance at collector
VBEmax=(0.7)
disp("VBEmax = "+string(VBEmax)+" volts") // maximum base-emitter voltage
VBEmin=(0.5)
disp("VBEmin = "+string(VBEmin)+" volts") // minimum base-emitter voltage
BFmax=150
disp("BFmax = "+string(BFmax)+" ") //BJT gain maximum
BFmin=50
disp("BFmin = "+string(BFmin)+" ") //BJT gain minimum
ICOmax=500*10^(-9)
disp("ICOmax = "+string(ICOmax)+" ampere") // maximum collector reverse bias current
ICOmin=10*10^(-9)
disp("ICOmin = "+string(ICOmin)+" ampere") // minimum collector reverse bias current
VBB=(VCC*R2)/(R1+R2)
disp("VBB = "+string(VBB)+" volts") // Base supply voltage 
RB=(R1*R2)/(R1+R2)
disp("RB = (R1*R2)/(R1+R2)="+string(RB)+ " ohm") // eqivalent base resistance
ICmin=[(BFmin*(VBB-VBEmax)+(RB+Rc)*(1+BFmin)*ICOmin)/(RB+Rc*(1+BFmin))] // minimum collector  current
disp("ICmin = "+string(ICmin)+" ampere")
VCEQmax=VCC-ICmin*RL //  maximum collector-emitter voltage (d.c value)
disp("VCEQmax =VCC-ICmin*RL = "+string(VCEQmax)+" volts") //calculation
ICmax=[(BFmax*(VBB-VBEmin)+(RB+Rc)*(1+BFmax)*ICOmax)/(RB+Rc*(1+BFmax))] // maximum collector  current
disp("ICmax = "+string(ICmax)+" ampere")
VCEQmin=VCC-ICmax*RL // minimum collector-emitter voltage (d.c value)
disp("VCEQmin =VCC-ICmax*RL = "+string(VCEQmin)+" volts") //calculation
change_IC=ICmax-ICmin
disp("change_IC= "+string(change_IC)+" ampere") // extreme variation in collector current
// ERROR - NOTE: Extreme variation in collector current given in book is 0.397 mA but calculated correct ans is 0.3276 mA 
 
