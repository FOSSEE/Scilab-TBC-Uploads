//Exa 2.18
clc;
clear;
close;
//Given data : 
RB=50;//in kohm
RC=3;//in kohm
VCC=10;//in volt
VEE=5;//in volt
hfe=100;//unitless
VCEsat=0.2;//in volt
VBEsat=0.8;//in volt
VBEactive=0.7;//in volt
VBE=0.7;//in volt(For Si)
//Applying 
IB=(VEE-VBE)/(RB*10^3);//in Ampere: Kirchoff 2nd Law : VEE-RB*IB-VBE=0
IC=hfe*IB;//in Ampere 
VCB=VCC-IC*RC*10^3-VBEactive;//in volt: //Applying Kirchoff 2nd Law to collector-emitter loop: VCC-IC*RC-VCB-VBEactive=0
disp(VCB,"Collector to base voltage, VCB(in V) :");
disp("This shows that the base collector junction is forward biased. This implies that the transistor is in saturation region.");
IB=(VEE-VBEsat)/(RB*10^3);//in Ampere
disp(IB*10^3,"Value of IB in mA :");
IC=(VCC-VCEsat)/(RC*10^3);
disp(IC*10^3,"Value of IC in mA :");
