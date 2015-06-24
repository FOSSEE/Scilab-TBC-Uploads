//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 220
clear;
clc;

//Given Data
//Figure 7.7

IDSS=15D-3;//drain saturation current in amperes
VGS_cutoff=-5;//gate to source cutoff voltage in volts
RD=300;//drain resistance in ohms

//Solution

VP=-VGS_cutoff;//pinch-off voltage in volts
VDS=VP;//drain to source voltage in volts should be equal to VP or more than that for constant current region
VGS=0;//gate to source voltage in volts
ID=IDSS;//drain current in amperes is saturation current because VGS=0 volts
VRD=ID*RD;//voltage drop across resistor
VD_dash_min=VRD+VDS;//minimum source voltage required for constant current region in volts
printf("Minimum VD'' required to place JFET into constant current region = %.1f Volts\n ",VD_dash_min);
VD_dash=15;//given value of VD'
if VD_dash>VD_dash_min then
    ID=IDSS;//drain current in equal to saturation current
end
printf("Drain current for VD'' = %d Volts , ID = %d mA\n And increased voltage will appear as drop in drain source terminals.",VD_dash,ID*1000);
