//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 184 and 185
clear;
clc;

//Given Data
//Figure 6.7

VCC=20;//collector supply voltage in volts
RC=1.5D3;//collector resistance in ohms
RE=1.8D3;//emitter resistance in ohms
R1=8.2D3;//divider network resistance R1 in ohms
R2=3.9D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts

//Solution

//For DC load line
VCEd=0:VCC;//as for load line maximum VCE is at IC=0 mA ie. VCE=VCC
ICd=(VCC-VCEd)/(RC+RE)*1000;//equation for DC load line
VB=VCC*R2/(R1+R2);//base to ground voltage in volts
VE=VB-VBE;//emitter to ground voltage in volts
IE=VE/RE;//emitter current in milli-amperes
IC=IE;//collector current is approximately equal to emitter current
VCE=VCC-IC*(RC+RE);//collector to emitter voltage in volts

//For AC load line
m=-1/RC;//slope of AC load line i.e. ΔIC/ΔVCE
c=IC-m*VCE;//load line passes through Q point
ICa=(m*VCEd+c)*1000;//AC load line equation

plot2d(VCEd,[ICd' ICa'],[1,2],leg="DC LOAD LINE@AC LOAD LINE",rect=[0,0,21,7]);
plot2d(VCE,IC*1000,-1);
xlabel("VCE (in Volts)");
ylabel("IC (in mA)");
xstring(VCE+.1,IC*1000+.1,"Q point");
xstring(VCC,.1,"R");
xstring(.1,VCC/(RC+RE)*1000,"P");
title("LOAD LINES FOR EXAMPLE 6.1")
