//refer BJT characteristics in fig3.2(a)and fig3.4(a)
//Ex3_2
clc
Vbe1=0.025
disp("Vbe1 = "+string(Vbe1)+" volts") // value of base-emitter voltage1
Vbe2=(-0.025)
disp("Vbe2 = "+string(Vbe2)+" volts") // value of base-emitter voltage2
ib1=20*10^(-6)
disp("ib1 = "+string(ib1)+" ampere") // value of base current1
ib2=(-20*10^(-6))
disp("ib2 = "+string(ib2)+" ampere")// value of base current2
IBQ=60*10^(-6)
disp("IBQ = "+string(IBQ)+" ampere") // operating point
ICP=15.5*10^(-3)
disp("ICP = "+string(ICP)+" ampere") // initialization
ICR=8.5*10^(-3)
disp("ICR = "+string(ICR)+" ampere") // initialization
VCEP=5
disp("VCEP = "+string(VCEP)+" volts") // value of collector-emitter voltage1
VCER=9
disp("VCER = "+string(VCER)+" volts") // value of collector-emitter voltage2
change_IC=ICP-ICR  //change in collector current
disp("change_IC = "+string(change_IC)+" ampere")
change_VCE=VCER-VCEP //change in collector voltage
disp("change_VCE = "+string(change_VCE)+" volts") 
change_VBE=Vbe1-Vbe2
change_IB=ib1-ib2
AV=(change_VCE/change_VBE) //formulae voltage gain
disp("AV = "+string(AV)+" ")//voltage gain
AI=change_IC/change_IB //formulae current gain
disp("AI = "+string(AI)+" ")
