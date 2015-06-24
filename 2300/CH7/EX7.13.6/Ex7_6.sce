//scilab 5.4.1
//Windows 7 operating system
//chapter 7 Junction Transistor Characteristics
clc
clear
disp("Applying Kirchhoff voltage law to the base & collector circuit respectively")
//(R1*IB)+VBE+(RE*(Ic+IB))=VBB..........(1)
//(R2*Ic)+VCE+(RE*(Ic+IB))=Vcc..........(2)
R1=47//R1=value of base circuit resistance in kilo ohms
RE=2.2//RE=emitter circuit resistance in kilo ohms
R2=3.3//R2=collector circuit resistance in kilo ohms
VBE=0.85//VBE=voltage between base and emitter terminals
VBB=5//VBB=base supply voltage
Vcc=9//Vcc=collector supply voltage
VCE=0.22//VCE=voltage between collector and emitter terminals
R=[(R1+RE) RE;RE (R2+RE)];
V=[(VBB-VBE);(Vcc-VCE)];
I=inv(R)*V
disp("mA",I(1),"IB=")
disp("mA",I(2),"IC=")
hFE=110//hFE=dc current gain
disp("The minimum base current required for saturation is")
IBmin=I(2)/hFE
disp("mA",IBmin,"IBmin=")
if (I(1)<IBmin) then
    disp("As IB<IBmin transitor is not in the saturation region.It must be in the active region.")
end
