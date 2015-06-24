//Ex8_7
clc
if=100*10^(-6)
disp("if = "+string(if)+" ampere") //Full-Scale deflection current
Av=1*10^(5)
disp("Av= "+string(Av)) //Voltage gain    
vs=10*10^(-3)    
disp("vs= "+string(vs)+" volts") //  Input voltage 
RM=100
disp("RM= "+string(RM)+ " ohm")  // Moving coil Ammeter internal resistance
Ri=10*10^(3)
disp("Ri= "+string(Ri)+ " ohm")  //Input resistance of OP-AMP
R1=vs/if
disp("R1=vs/if= "+string(R1)+ " ohm")  // Resistor at input side of OP-AMP in Voltage-to-Current converter 
Avf=1+(RM/R1) // formulae using Avf=1+(RF/R1)=1+(RM/R1)// since RF=RM
disp("Avf=1+(RM/R1)="+string(Avf)) // Overall Voltage gain
Rif=Ri*(Av/Avf)
disp("Rif=Ri*(Av/Avf)="+string(Rif)+ " ohm")  // Equivalent input side resistance of OP-AMP with feedback

 
