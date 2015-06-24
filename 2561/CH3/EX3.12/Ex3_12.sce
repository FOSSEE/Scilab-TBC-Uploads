//Ex3_12
clc
VBE=(0.7)
disp("VBE = "+string(VBE)+" volts") // value of base-emitter voltage
VCC=10
disp("VCC = "+string(VCC)+" volts") // collector supply voltage 
IREF=5*10^(-3)
disp("IREF =IQ= "+string(IREF)+" ampere") //  current mirror source current
R=(VCC-VBE)/(IREF)// formulae
disp("R=(VCC-VBE)/(IREF)= "+string(R)+ " ohm")  //resistance
