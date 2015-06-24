//Ex3_8
clc
Vpp = 4.2*10*10^-3//peak to peak voltage of sinusoidal signal  //notation not used in textbook
Vm = Vpp/2//maximum positive voltage
Vrms = Vm/(2^.5)//root mean square value of voltage
disp("Vm = "+string(Vm)+"V")
disp("Vrms = Vm/(2^.5) = "+string(Vrms)+"V")
