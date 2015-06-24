//Ex_7_7
clc;
clear;
close;
format('v',6);
//given data : 
Beta=100;//unitless
VBE=0.7;//V
VCC=10;//V
//(a) VE=-0.7;//V
disp("For the circuit in fig(a)");
VE=-0.7;//V(Constant voltage)
R1=10;//kohm
R2=10;//kohm
IE=(VCC+VE)/R2;//mA
IB=IE/(Beta+1);//mA
VC=VCC-R1*1000*(IE-IB)/1000;//V
disp(VE,"Constant voltage fo the given transistor, VE(V)");
disp(IE,"Emitter current(mA)");
format('v',5);
IB=IB*1000;///micro A
disp(IB,"Base current(micro A)");
format('v',6);
disp(VC,"VC(V)");

//(b) VE=-0.7;//V
R1=5;//kohm
R2=5;//kohm
VEE=-15;//V
disp("For the circuit in fig(b)");
VE=-0.7;//V(Constant voltage)
R1=5;//kohm
R2=5;//kohm
IE=(VCC+VE)/R2;//mA
IC=IE*Beta/(Beta+1);//mA
VC=VEE+R2*IC;//V
disp(VE,"Constant voltage fo the given transistor, VE(V)");
disp(IE,"Emitter current(mA)");
disp(IC,"Base current(mA)");
format('v',5);
disp(VC,"VC(V)");
