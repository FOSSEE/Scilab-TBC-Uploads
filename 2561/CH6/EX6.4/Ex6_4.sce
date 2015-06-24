//Ex6_4
clc
VCC=(10)
disp("VCC= "+string(VCC)+" volts") // Collector voltage supply
VEE=VCC
disp("VEE=VCC= "+string(VEE)+" volts") // Emitter supply voltage
IQ=2*10^(-3)
disp("IQ = "+string(IQ)+" ampere") //  operating current for CC class-Aamplifier
VBE=(0.7)
disp("VBE= "+string(VBE)+" volts") // Base-emitter voltage 
disp("part(i)")
RL=VCC/IQ
disp("RL=VCC/IQ= "+string(RL)+ " ohm")  //Load resistance
Pomax=VCC^2/(2*RL)
disp("Pomax=VCC^2/(2*RL)= "+string(Pomax)+" W") // maximum Output power 
PDC=2*VCC*IQ
disp("PDC=2*VCC*IQ= "+string(PDC)+" W") // Total D.C power supply
Etta_max=(Pomax/PDC)*100
disp("Efficiency,Etta_max=(Pomax/PDC)*100= "+string(Etta_max)+"%") //maximum power amplifier conversion efficiency
PDmax=VCC*IQ
disp("PDmax=VCC*IQ= "+string(PDmax)+" W") // maximum power dissipation 
disp("part(ii)")
Vcm=(5)
disp("Vcm= "+string(Vcm)+" volts") // common mode voltage
Po=Vcm^2/(2*RL)
disp("Po=Vcm^2/(2*RL)= "+string(Po)+" W") // Output power 
Etta=(Po/PDC)*100
disp("Efficiency,Etta=(Po/PDC)*100= "+string(Etta)+" %") // power amplifier conversion efficiency
PDCavg=PDmax-Po//Using law of conservation of energy
disp("PDCavg=PDmax-Po= "+string(PDCavg)+" W") // Average power dissipated in BJT
