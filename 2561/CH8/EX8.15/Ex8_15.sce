//Ex8_15
clc
SR=0.65
disp("SR= "+string(SR)+"  volts/microsecond")// Slew rate of OP-AMP
disp("part(i)")
Vm=5
disp("Vm= "+string(Vm)+" volts") //  Output peak voltage1
fsm=SR/[10^(-6)*(2*%pi*Vm)] // using formulae  SR=2*pi*fsm*Vm
disp("fsm=SR/[10^(-6)*(2*%pi*Vm)] = "+string(fsm)+" Hz")// // Full power bandwidth  for Output peak voltage Vm=5V
disp("part(ii)")
Vm=1
disp("Vm= "+string(Vm)+" volts") //  Output peak voltage2
fsm=SR/[10^(-6)*(2*%pi*Vm)]  // using formulae  SR=2*pi*fsm*Vm
disp("fsm=SR/[10^(-6)*(2*%pi*Vm)] = "+string(fsm)+" Hz")// // Full power bandwidth  for Output peak voltage Vm=1V
