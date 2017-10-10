clc
e = 1.6*10^-19;
kbT = 0.026;
disp("e= "+string(e)+"C")//initializing value of charge of electron
A= 10^-7
disp("A= "+string(A)+"m^2") //initializing value of diode area
ni = 1.5*10^16
disp("ni= "+string(ni)+"m^-3")//initializing value of intrinsic carrier concentration
T = 10^-6
disp("T= "+string(T)+"s")//inializing value of carrier lifetime
// from example 5.2 we get the value of zero bias depletion widths
W = 0.32*10^-6
disp("The zero bias depletion widths is ,W "+string(W)+"m")
Io_GR = (e*A*W*ni)/(2*T)
disp("The prefactor of the  is ,generation recombination currentIo_GR = (e*A*W*ni)/(2*T)= "+string(Io_GR)+"A")//calculation
//let V = .2 V 
V = .2
I_GR = Io_GR*(exp(V/(2*kbT))-1)
disp("The diode current is ,I_GR = Io_GR*(exp(V/(2*kbT))-1)= "+string(I_GR)+"A")//calculation
//let V = 0.6 V 
V = 0.6
I_GR = Io_GR*(exp(V/(2*kbT))-1)
disp("The diode current is ,I_GR = Io_GR*(exp(V/(2*kbT))-1)= "+string(I_GR)+"A")//calculation
// The generation-recombination prefactor is much larger than prefactor due to diffusion term
//In forward bias the diffusion current is initially much smaller than the generation recombination term but at high forward bias diffusion current will start to dominate