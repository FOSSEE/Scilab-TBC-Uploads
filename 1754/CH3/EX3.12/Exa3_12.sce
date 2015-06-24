//Exa 3.12
clc;
clear;
close;
//Given data : 
VCC=20;//in volt
RC=20;//in ohm
VCEQ=10;//in volt
ICQ=500;//in mA
//part (i) :
Pin_dc=VCC*ICQ*10^-3;//in watt
disp(Pin_dc,"Total dc power taken by the circuit in Watt : ");
//part (ii) :
PRc_dc=ICQ^2*10^-6*RC;//in watt
disp(PRc_dc,"dc power dissipated by the collector load in Watt : ");
//part (iii) :
Io=250;//in mA(maximum value of output ac current)
Irms=Io/sqrt(2);//in mA
Po_ac=Irms^2*10^-6*RC;//in watt
disp(Po_ac,"Power developed across the load in Watt : ");
//part (iv) :
Ptr_dc=Pin_dc-PRc_dc;//in watt
disp(Ptr_dc,"dc power dissipated by the collector load in Watt : ");
//part (v) :
PC_dc=Pin_dc-PRc_dc-Po_ac;//in watt
disp(PC_dc,"dc power dissipated by the collector load in Watt : ");
//part (vi) :
ETAoverall=Po_ac*100/Pin_dc;//Overall Efficiency (in %)
disp(ETAoverall,"Overall Efficiency (in %) :");
//part (vii) :
ETAcollector=Po_ac*100/PRc_dc;//Collector Efficiency (in %)
disp(ETAcollector,"Collector Efficiency (in %) :");