//scilab 5.4.1
//Windows 7 operating system
//chapter 8 Junction Transistors:Biasing and Amplification
clc
clear
RE=0.680//RE=resistance in kilo ohms connected to the emitter terminal
RC=2.7//RC=resistance in kilo ohms connected to the collector terminal
//RB=resistance connected to the base terminal
VCE=7.3//VCE=collector emitter voltage
VBE=0.7//VBE=base emitter voltage
Vre=2.1//Vre=voltage across RE resistance
IB=0.02//IB=base current in mA
IE=Vre/RE//IE=emitter current in mA
IC=IE-IB//IC=collector current in mA
b=IC/IB//b=current gain
format("v",6)
disp(b,"The current gain β is =")
VCC=(IC*RC)+VCE+Vre//VCC=collector supply voltage
format("v",5)
disp("V",VCC,"The collector supply voltage VCC is =")
//Voltage across RB (Vrb)resistance is given by
Vrb=VCC-(VBE+Vre)
RB=Vrb/IB
format("v",5)
disp("kilo ohm",RB,"The resistance RB is =")
//To draw the DC load line,we neglect the base current in RE resistance
//Equation for DC load line is:
//VCE=VCC-(RC+RE)*IC
disp("For the DC load line")
disp("V",VCC,"The intercept of the load line on the VCE-axis(X-axis) is =")
disp("mA",VCC/(RC+RE),"The intercept of the load line on the IC axis(Y-axis) is =")
disp("The DC load line is the straight line joining above two intercepts.")
disp("The co-ordinates of the operating point Q on the load line are (7.3V,3.07mA)")


 
