//scilab 5.4.1
//Windows 7 operating system
//chapter 8 Junction Transistors:Biasing and Amplification
clc
clear
VBE=0.7//VBE=base emitter voltage
b=90//b=dc current gain of the common emitter transistor
VCC=10//VCC=collector supply voltage
RE=1.2//RE=resistance in kilo ohms connected to the emitter terminal
RC=4.7//RC=resistance in kilo ohms connected to the collector terminal
RB=250//RB=resistance in kilo ohms connected to the base terminal
//Applying Kirchhoff's voltage law
//VCE=(RB*IB)+VBE where VCE=collector emitter voltage
//Also VCC=((IB+IC)*RC)+VCE+(IE*RE)
//IC=b*IB where IC=collector current and IB=base current
//IE=IC+IB where IE=emitter current
//IE=(b+1)*IB
IB=(VCC-VBE)/(((b+1)*(RC+RE))+RB)
format("v",6)
IE=(b+1)*IB
format("v",5)
VCE=(RB*IB)+VBE
format("v",5)
IC=b*IB
format("v",5)
disp("mA",IE,"The quiescent value of IE is =")
disp("V",VCE,"The quiescent value of VCE is =")
disp("mA",IC,"When dc current gain=90,IC=")
//b is increased by 50%
b1=((50*b)/100)+b
IB1=(VCC-VBE)/(((b1+1)*(RC+RE))+RB)
IC1=b1*IB1
disp("mA",IC1,"When dc current gain is increased by 50%,IC=")
x=((IC1-IC)/IC)*100//x=increase in the collector current
disp("%",x,"The increase in the collector current IC is =")
disp("The percentage increase of IC being less than that of the dc current gain,the circuit provides some stabilization against the changes in the dc current gain.")
disp("VCE does not depend on dc current gain and hence it is not affected when the dc current gain changes.")
