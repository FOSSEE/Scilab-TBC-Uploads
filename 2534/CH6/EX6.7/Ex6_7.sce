//Ex6_7
clc
VCC = 12
VBB = 3
IC = 12*10^-3
VCE = 5.5
beta = 100
VBE = 0.7
Re = 50
disp("VCC = "+string(VCC)+"V")//collector supply voltage
disp("VBB = "+string(VBB)+"V")//base supply voltage
disp("IC = "+string(IC)+"A")//collector current
disp("VCE = "+string(VCE)+"V")//voltage across collector and emitter
disp("beta = "+string(beta))//current gain
disp("VBE = "+string(VBE)+"V")//voltage across base and emitter
disp("Re = "+string(Re)+"ohm")//emittter resistance
IB = IC/beta
disp("IB = IC/beta = "+string(IB)+"A")//base current
//from base-emitter circuit;
IE = IC+IB
Rb = (VBB - VBE - (IE*Re))/IB
disp("Rb = (VBB - VBE - IE*Re)/IB = "+string(Rb)+"ohm")//base resistance
//from collector-emitter circuit, we have
Rc = (VCC - VCE - (IE*Re))/(IC)
disp("Rc = (VCC - VCE - (IE*Re))/IC = "+string(Rc)+"ohm")//collector resistance


//NOTE : in textbook the notation used for base and emitter resistance in fig. and in calculation are different



// note : calculation perform in the textbook is wrong for the above problem
