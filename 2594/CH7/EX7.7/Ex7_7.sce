clc
Jro=10^-9
disp("Jro = "+string(Jro)+" A/cm^2") //initializiation the value of recombination current density.
Jo=10^-12
disp("Jo = "+string(Jo)+" A/cm^2") //initializiation the value of reverse saturation current density.
Vbe=0.5
disp("Vbe = "+string(Vbe)+" V") //initializiation the value of base emitter voltage.
VT=0.0259
disp("VT = "+string(VT)+" V") //initializiation the value of threshold voltage.
delta=(1+((Jro/Jo)*(exp((-Vbe)/(2*VT)))))^-1
disp("delta (recombination factor)=(1+((Jro/Jo)*(exp((-Vbe)/(2*VT)))))^-1)="+string(delta))//calculation.
