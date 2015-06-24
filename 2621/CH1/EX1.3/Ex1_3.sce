// Example 1.3
clc;
clear;
close;
// Given data
format('v',6);
VCC= 12;//in V
VEE= -12;// in V
RC= 10;//in kΩ
RE= 10;// in kΩ
RB= 20;// in kΩ
VBE= 0.7;// in V
// Part (a)
beta_dc= 75;
// Tail current, IT= 2*IE= VEE/RE (ignoring VBE), hence
IT= abs(VEE)/RE;// in mA
IC= IT/2;//collector current in mA
// output voltage,
Vout1= VCC-IC*RC;// in V
IT= (abs(VEE)-VBE)/RE;// tail current in mA (on considering VBE)
IC= IT/2;//collector current in mA
Vout2= VCC-IC*RC;// in V
// Tail current,
IT= (abs(VEE)-VBE)/(RE+RB/(2*beta_dc));// in mA
IC= IT/2;//collector current in mA
// output voltage,
Vout3= VCC-IC*RC;// in V
disp("Part (a) : There are three different  values of output voltage in volts");
disp(Vout1);
disp(Vout2);
disp(Vout3);

// Part (b)
IT= abs(VEE)/RE;// in mA
IC= IT/2;//collector current in mA
IB= IC/(beta_dc);// base current in mA
IB= IB*10^3;// in µA
VB= -IB*RB;//base voltage  in mV
VB= VB*10^-3;// in V
disp("Part (b) : ");
disp(IB,"The value of base current in µA is : ");
disp(VB,"The value of base voltage in volts is : ");

// Part (c)
beta_dc1= 60;
beta_dc2= 80;
IB1= IC/beta_dc1;//base current for transistor Q1, in mA
IB1= IB1*10^3;// in µA
disp("Part (c)")
disp(IB1,"The value of base current for transistor Q1 in µA is : ");
VB1= -IB1*RB;// in mV
VB1= VB1*10^-3;// in V
disp(VB1,"The value of base voltage for transistor Q1 in volts is : ");
IB2= IC/beta_dc2;//base current for transistor Q2, in mA
IB2= IB2*10^3;// in µA
disp(IB2,"The value of base current for transistor Q2 in µA is : ");
VB2= -IB2*RB;// in mV
VB2= VB2*10^-3;// in V
disp(VB2,"The value of base voltage for transistor Q2 in volts is : ");

// Note : In the part (c), the unit of base current for transistor Q2 in the book is wrong it will be µA



