//Caption:Determines the turns per phase for the HV and LV winding of the 3 phase transformer.
//Exam:4.1
clc;
clear;
close;
F_max=0.024;//Maximum flux (in weber)
f=50;//Supply frequency(in Hz)
E_1p=11000;//Primary phase voltage(in Volts)
N_1=ceil(E_1p/(4.44*F_max*f));//Turns per phase on primary
disp(N_1,'turns per phase for the H.V. winding of the 3 phase transformer=');
E_2l=400;//Secondary line voltage(in Volts)
E_2p=E_2l/(3)^(1/2);//Secondary phase voltage(in Volts)
N_2=ceil(E_2p/(4.44*F_max*f));//turns per phase for the L.V. winding of the 3 phase transformer
disp(N_2,'turns per phase for the L.V. winding of the 3 phase transformer=');