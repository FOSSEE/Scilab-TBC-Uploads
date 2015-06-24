//scilab 5.4.1
//Windows 7 operating system
//chapter 8 Junction Transistors:Biasing and Amplification
clc
clear
VBE=0.7//VBE=base emitter voltage
b=120//b=dc current gain of the common emitter transistor
VCC=15//VCC=collector supply voltage
R1=72//R1=resistance in kilo ohms
R2=8//R2=resistance in kilo ohms
RL=2//RL=load resistance in kilo ohms
Re=0.700//Re=resistance in kilo ohms connected to the emitter terminal
RC=2//RC=resistance in kilo ohms connected to the collector terminal
Rin=1.5//Rin=input resistance in kilo ohms of the amplifier
vi=1//vi=amplitude of the ac input signal in mV
VT=(R2*VCC)/(R1+R2)//VT=Thevenin equivalent voltage
RT=(R1*R2)/(R1+R2)//RT=Thevenin equivalent resistance
//Applying Kirchhoff's voltage law to the base circuit
//(IB*(RT+Re))+(IC*Re)=VT-VBE
//IC=b*IB
IB=(VT-VBE)/(RT+Re+(b*Re))//IB=base current
IC=b*IB//IC=collector current
format("v",5)
//Applying Kirchhoff's voltage law to the collector circuit
//(IC*(RL+Re))+(IB*Re)+VCE=VCC
VCE=VCC-((IC*(RL+Re)))//VCE=collector emitter voltage(neglecting small term IB*RE)
format("v",5)
//Equation for DC load line is:
//VCE=VCC-(RL+Re)*IC
disp(" 1. For the DC load line")
disp("The operating point Q is specified by")
disp("mA",IC,"IC=")
disp("V",VCE,"VCE=")
disp("V",VCC,"The intercept of the dc load line on the VCE-axis(X-axis) is =")
disp("mA",VCC/(RC+Re),"The intercept of the dc load line on the IC axis(Y-axis) is =")
disp("The DC load line is the straight line joining above two intercepts.")
Rac=(RL*RC)/(RL+RC)//Rac=ac load resistance
disp(" 2. For the AC load line")
disp("V",VCE+(IC*Rac),"The intercept of the ac load line on the VCE-axis(X-axis) is =")
disp("The line joining the above intercept and the operating point Q extended to meet the IC axis(Y-axis) gives the AC load line")
AV=-(b*Rac)/Rin//AV=voltage gain of the amplifier
vo=abs(AV)*vi//vo=amplitude of the output voltage signal
disp("mV",vo," 3. The amplitude of the output voltage vo is =")

