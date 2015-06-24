//minimum voltage to operate
//given
clc
Vs=3.3d+3//VOLTS//the minimum voltage gradient required to start the diode
l=2.5d-6//meter//the drift length
Vmin=Vs*l//the minimum voltage required to operate
disp(Vmin*1000,'the minimum voltage required to operate in m/V')//mV//millivolts
