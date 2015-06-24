//Ex5_2
clc 
Vm = 18

//in half wave circuit
Vdc = Vm/%pi
PIV = Vm
disp("Vm = "+string(Vm)+"V")//peak voltage to rectifier
disp("Vdc = Vm/pi = "+string(Vdc)+"V")//D.C. voltage
disp("PIV = Vm = "+string(PIV)+"V")//peak inverse voltage

//in full wave circuit
Vdc = (2*Vm/%pi)
PIV = 2*Vm
disp("Vdc = 2*Vm/pi = "+string(Vdc)+"V")//D.C. voltage
disp("PIV = 2*Vm = "+string(PIV)+"V")//peak inverse voltage for center trapped

//in full wave Bridge rectifier
disp("PIV = Vm = "+string(Vm)+"V")//peak inverse voltage
