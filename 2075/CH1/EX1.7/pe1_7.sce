//example 1.7
clc; funcprot(0);
// Initialization of Variable
Vs=18;//V
Rl=8;//load resistance
Pll=100;//power
//calculation
Vlp=Vs-4;
Vlr=Vlp/(2^.5);
disp(Vlr,"rms voltage in V:")
Pl=(Vlr^2)/Rl;
disp(Pl,"power delivered in W:")
Vl=(Pll*Rl)^.5;
disp(Vl,"load voltage in V:")
clear()
