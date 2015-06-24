//Ex_8_1
clc;
clear;
close;
format('v',6);
//given data : 
Beta=100;//unitless
Rc=2;//kohm
Rb=100;//kohm
Vcc=10;//V
VBE=0.7;//V
//Part (a)
IB=(Vcc-VBE)/(Beta*Rc+Rc+Rb);//mA
disp(IB,"IB(mA)");
format('v',4);
IC=Beta*IB;//mA
disp(IC,"IC(mA)");
format('v',5);
VCE=Vcc-(IB+IC)*Rc;//V
disp(VCE,"VCE(V)");
//Part (b)
format('v',8);
VCE=7;//V
ICB=(Vcc-VCE)/Rc;//mA(ICB=IC+IB)
IB=ICB/(1+Beta);//mA
IC=ICB*Beta;//mA
Rb=(Vcc-VBE-Rc*ICB)/IB;//kohm
disp(Rb,"Value of Rb(kohm)");
