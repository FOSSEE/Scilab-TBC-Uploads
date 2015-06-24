//Ex4_14
clc
KF1=0.25*10^(-3)
disp("KF1 = "+string(KF1)+" A/V^2") //  Scale factor 
KF2=KF1
disp("KF2 = "+string(KF2)+" A/V^2") //  Scale factor 
IQ=1*10^(-3)
disp("IQ= "+string(IQ)+" ampere") // constant current  source value
VT1=2
disp("VT1 = "+string(VT1)+" volts")// Threshold voltage
VT2=VT1
disp("VT2 = "+string(VT2)+" volts")// Threshold voltage
VDD=(15)
disp("VDD= "+string(VDD)+" volts") // Drain supply voltage 
IREF=IQ
disp("IREF =IQ= "+string(IREF)+" ampere") // Reference current value
VGS=VT1+sqrt(2*IREF/KF1) // Formulae
disp("VGS= VT1+sqrt(2*IREF/KF1)="+string(VGS)+" volts") // Gate to source voltage 
R=(VDD-VGS)/IREF
disp("R= (VDD-VGS)/IREF="+string(R)+ " ohm")  // resistance value to obtain constant current
//  ERROR NOTE:values of VGS and R (correct) are 4.8284271 volts and 10171.573 ohm  respectively but given in book are VGS=4V and R=11 kilo ohms
