clc
// using values from the result of Example 7.1
VEB = 0.6
disp("VEB= "+string(VEB)+"V")//initializing value of Emitter-base bias voltage
Ic = .2268*10^-3
disp("Ic= "+string(Ic)+"A")//initializing value of collector current
Ib = 4.92*10^-6
disp("Ib= "+string(Ib)+"A")//initializing value of base current at the biasing
kbT = 0.026
disp("kbT = "+string(kbT)+"eV/K") //initializing value of kbT at 300K
Beta = Ic/Ib
disp("The current gain Beta = Ic/Ib= "+string(Beta))//calculation
gm = Ic/kbT
disp("The transconductance is,gm = Ic/kbT = "+string(gm)+"S")//calculation
