//To Determine the necessary settings of Regulators
//Page 482
clc;
clear;

l=3;//Length of the line
Vlc=2450; //Regulated Voltage
Vcp=12800; //Primary of customer transformer
//Base Values
Vlbp=2400; //Primary Bus Voltage of Customer's Bus(Low Voltage)
Vlbs=4160;//Secondary Bus Voltage of Customer's Bus
Sb=5000; //Power in kVA
r=0.3; //Line Resistance per mile
x=0.8; //Line Reactance per mile
Vhbp=7390;//Primary Bus Voltage of High Voltage Bus
Vhbs=12800;//Secondary Bus Voltage of High Voltage Bus
PTn=63.5; //Potential Transformer Turns Ratio
CTp=250;//Current Transformer Turns Ratio
VRP=Vlc/Vlbp;//Voltage at RP 
Vll=Vhbs/1000; //Line Voltage
VBsec=Vcp/(sqrt(3)*PTn); //Secondary Reading of the Customer Transformer

VRRset=VRP*VBsec; //Setting of the voltage-setting dial of VRR

Zb=(Vll^2)*1000/Sb; //Applicable Impedance Base
Ztpu=0.05*%i;//Transformer Impedance per unit
Zt=Ztpu*Zb;//Transformer Impedance

//Effective Resistances and Reactances
Reff=(r*l)+real(Zt);
Xeff=(x*l)+imag(Zt);

Rset=CTp*Reff/PTn; //X Dial Setting of LDCs
Xset=CTp*Xeff/PTn; //X Dial Setting of LDCs

printf('\na) The Necessary Setting of the voltage-setting dial of the VRR of each single phase regulator in use is %g V\n',VRRset)
printf('b) R and X dial settings of LDS is %g ohm and %g ohm respectively\n',Rset,Xset)
