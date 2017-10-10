clear;
clc;
Vm=100 //voltage in V
Rf=1*10^3 //resistance in series in ohm
Rl=4*10^3 //load resistance in ohm

//Calculation
Im=Vm/(Rf+Rl)
Idc=Im/%pi
Irms=Im/2

format("e",8)
disp(Im,"(a)Maximum current Im is (A)= ")
format("e",9)
disp(Idc,"(b)dc component of current Idc is (A)=")
disp(Irms,"(c)rms value of current Irms (A)= ")
