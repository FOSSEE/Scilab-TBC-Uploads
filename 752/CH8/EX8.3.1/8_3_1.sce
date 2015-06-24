clc;
//page no 257
//prob no. 8.3.1
//A modulating signal with zero dc component & vpp=11,vcp=10 carrier peak voltage
vpp=11;//peak to peak voltage of modulating signal
vcp=10;//carrier peak voltage
//Determination of modulation index
E_max=vcp+(vpp/2);
E_min=vcp-(vpp/2);
m=(E_max-E_min)/(E_max+E_min);
disp(m,'The modulation index is');
//determination of kratio of side lengths
L1_L2=E_max/E_min;
disp(L1_L2,'The ratio of side lengths L1/L2 is');