//scilab 5.4.1
//Windows 7 operating system
//chapter 8 Junction Transistors:Biasing and Amplification
clc
clear
VBE=0.7//VBE=base emitter voltage
b=99//b=dc current gain of the common emitter transistor
VCC=15//VCC=collector supply voltage
RE=7//RE=resistance in kilo ohms connected to the emitter terminal
RC=4//RC=resistance in kilo ohms connected to the collector terminal
RB=5//RB=resistance in kilo ohms connected to the base terminal
VEE=(-15)//VEE=emitter supply voltage
//Applying Kirchhoff's voltage law in the base emitter loop
//-VEE=(RB*IB)+VBE +(IE*RE)
//IC=b*IB where IC=collector current and IB=base current
//IE=IC+IB where IE=emitter current
//IE=(b+1)*IB
IB=(-VEE-VBE)/(RB+((b+1)*RE))
format("v",7)
disp("mA",IB,"The quiescent value of IB is =")
IC=b*IB
format("v",5)
disp("mA",IC,"The quiescent value of IC is =")
IE=(b+1)*IB
format("v",5)
disp("mA",IE,"The quiescent value of IE is =")
//Applying Kirchhoff's voltage law in the output circuit
//(IC*RC)+VCE+(IE*RE)=VCC-VEE
VCE=(VCC-VEE)-(IE*RE)-(IC*RC)
format("v",5)
disp("V",VCE,"The quiescent value of VCE is =")
//b is increased by 20%
b1=((20*b)/100)+b
IB1=(-VEE-VBE)/(RB+((b1+1)*RE))
format("v",10)
IC1=b1*IB1
format("v",6)
disp("mA",IC1,"When dc current gain is increased by 20%,IC=")
x=((IC1-IC)/IC)*100//x=increase in the collector current
disp("%",x,"The increase in the collector current IC is =")
disp("Since a 20% increase in current gain produces a mere 0.284% enhancement of IC,the circuit provides a good stabilization against the changes in the current gain")
//In textbook the increase in the collector current is given as 0.5% which is actually coming as 0.284% approximately
