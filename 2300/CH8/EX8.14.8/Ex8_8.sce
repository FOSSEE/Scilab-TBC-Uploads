//scilab 5.4.1
//Windows 7 operating system
//chapter 8 Junction Transistors:Biasing and Amplification
clc
clear
//For a CE transistor amplifier circuit with self-bias
f=1000//f=frequency in Hz
AV=-200//AV=voltage gain
hfe=100//hfe=current gain
hie=1//hie=input impedance in kilo ohms
Pcmax=75*10^-3//Pcmax=maximum collector dissipation in Watt
//hre and hoe are to be neglected
VCC=12//VCC=collector supply voltage
//AV=-(hfe*RL)/hie where RL is the load resistance
RL=-(AV*hie)/hfe
format("v",5)
disp("The designed values of the components of a CE transistor amplifier are:")
disp("kilo ohm",RL,"The load resistance RL is =")
//For the amplifier to be linear,the quiescent point is chosen to lie in the middle of the DC load line
VCG=VCC/2  //VCG=DC collector to ground voltage
//VCC=(IC*RL)+VCG where IC=DC collector current
IC=(VCC-VCG)/RL
format("v",5)
disp("mA",IC,"Ihe DC collector current is =")
Pr=(IC^2)*RL//Pr=power dissipation in RL
//Pc=the collector dissipation is set at 14.5 mW which is below the value of Pcmax
//Pc=VCE*IC
Pc=14.5
VCE=Pc/IC//VCE=collector-to-emitter voltage drop
format("v",4)
VEG=VCG-VCE//VEG=DC voltage drop across resistance Re
IE=IC//IE=emitter current
Re=VEG/(IC)
disp("ohm",Re*1000,"The resistance Re is =")//Re is converted in terms of ohms
Pe=(IC^2)*Re//Pe=power dissipation in Re
VBE=0.7//VBE=assumed DC base-to-emitter voltage drop
VBG=VBE+(IE*Re)//VBG=DC voltage across resistance R2
//VT=(VCC*R2)/(R1+R2) where VT=Thevenin equivalent voltage
//RT=(R1*R2)/(R1+R2).............(1) where RT=Thevenin equivalent resistance
//VBG=VT-(IB*RT)
//VBG=((VCC*R2)/(R1+R2))-(IB*((R1*R2)/(R1+R2)))..................(2)
//Let (R2/(R1+R2))=x ..............(3)
x=VBG/VCC//neglecting the second term on the right hand side of equation (2)
a=(1-x)/x    //a=R1/R2
//S=((1+b)*(1+RT/Re))/(1+b+(RT/Re)) where S=stability factor and b=current gain=hfe
//b>>1 hence S=(hfe*(1+RT/Re))/(1+b+(RT/Re))
//For good stability we choose S=hfe/20
RT=((hfe-20)/19)*Re
R1=RT/x//from equation (1) and (3)
format("v",5)
disp("kilo ohm",R1,"The resistance R1 is=")
R2=R1/5.33
format("v",4)
disp("kilo ohm",R2,"The resistance R2 is =")
Pr2=(VBG^2)/R2//Pr2=power dissipation in R2
Pr1=((VCC-VBG)^2)/R1 //Pr1=power dissipation in R1
Ce=1/(2*%pi*f*((Re*1000)/10))//Ce=bypass capacitor
format("v",2)
disp("micro farad",Ce/10^-6,"The bypass capacitance Ce is =")//Ce is converted in terms of micro farad
C1=2/(2*%pi*f*100)//C1=coupling capacitor
format("v",4)
disp("micro farad",C1/10^-6,"The coupling capacitance C1 is =")//C1 is converted in terms of micro farad
Rin=20*1000//Rin=assumed input impedance in ohms
C2=1/(2*%pi*f*0.1*Rin)//C2=coupling capacitor
format("v",4)
disp("micro farad",C2/10^-6,"The coupling capacitance C2 is =")//C2 is converted in terms of micro farad

