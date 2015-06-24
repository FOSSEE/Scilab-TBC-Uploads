//Ex 2.1
clc;clear;close;
format('v',6)
VCC=5;//V
IS=10^-14;//A
RS=39*1000;//ohm
VBE12=0.7;//V(Assumed)
VBE11=0.7;//V(Assumed)
VEE=-5;//V
IREF=(VCC-VBE12-VBE11-VEE)/RS*10^6;//micro A
disp(IREF,"Estimated input reference current , IREF(micro A)");
VT=25*10^-3;//V(Thermal Voltage)
VBE=VT*log(IREF*10^-6/IS);//V
IREF=(VCC-VBE-VBE-VEE)/RS*10^6;//micro A
format('v',5)
disp(IREF,"More precise value of reference current , IREF(micro A)");
//Replacing Vcc by 15 V in the original design
VCC2=15;//V
VEE2=-15;//V
IREF=(VCC2-VBE-VBE-VEE2)/RS*10^6;//micro A
VBE=VT*log(IREF*10^-6/IS);//V
R5=(VCC-VBE-VBE-VEE)/(IREF*10^-6);//ohm
R5=round(R5/1000);//kohm
disp(R5,"Value of R5(kohm) : ");
