clc;
clear;
Vc=8;// carrier signal voltage in V
m=1;//modulation index
R=8;//resistance in ohms
//a)

Pc=Vc^2/(2*R); 
disp(Pc,"power of the carrier(in W) is");
Ps=m^2*Pc/4;
disp(Ps,"Power in each Side-Bands(in W)");

//b)
disp(2*Ps,"Total sideband Power(in W)");

//c)
disp(Pc+2*Ps,"Total Power of Modulated wave(in W)");

//d)
disp(2*Ps/(Pc+2*Ps)*100,"Efficiency Percentage");
