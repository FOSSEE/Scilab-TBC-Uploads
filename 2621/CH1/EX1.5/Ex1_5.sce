// Example 1.5
clc;
clear;
close;
// Given data
format('v',7);
VCC= 15;//in V
VEE= 15;// in V
RC= 1;//in MΩ
RE= RC;// in MΩ
beta_ac= 100;
VBE= 0.7;// in V
IE= (VEE-VBE)/(2*RE);//emitter current in µA
IC= IE;// in collector current in µA
re_desh= 26/IE;// ac resistance of each emitter diode in kΩ
Ad= RC*10^3/re_desh;// Voltage gain 
disp(Ad,"The voltage gain is : ");
Zin= 2*beta_ac*re_desh;// input impedance in kΩ
Zin= Zin*10^-3;// in MΩ
disp(Zin,"The input impedance in MΩ is : ");
Zout= RC;//output impedance in MΩ
disp(Zout,"The output impedance in MΩ is : ");
Acm= (RC*10^3)/(2*RE*10^3+re_desh);// common-mode gain
CMRR= Ad/Acm;// common-mode rejection ratio
disp(CMRR,"The common-mode rejection ratio is : ");
// When v_in is zero
Vout= VCC- IC*RC;// in V
disp(Vout,"When v_in is zero then the total output voltage at the quiescent value in volts is :  ");
// When v_in= 1mV,
v_in= 1*10^-3;// in V
Vout= Ad*v_in;// in V
disp(Vout,"When v_in is -1mV then the ac output voltage in volts is : ");

// Note : The value of CMRR in the book is wrong because the correct value of Acm is "0.4991" and in the book it is taken as "0.4225"



