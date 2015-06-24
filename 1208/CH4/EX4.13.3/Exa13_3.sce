//Exa 13.3
clc;
clear;
close;
//given data :
//initial cash outflows
ICO=80000;//in Rs.
//cash in flows of 10 years
CIF1=14000;//in Rs.
CIF2=14000;//in Rs.
CIF3=14000;//in Rs.
CIF4=14000;//in Rs.
CIF5=14000;//in Rs.
CIF6=16000;//in Rs.
CIF7=20000;//in Rs.
CIF8=30000;//in Rs.
CIF9=20000;//in Rs.
CIF10=8000;//in Rs.
//P.V factor at 10% rate of discount
PV1=0.909;
PV2=0.826;
PV3=0.751;
PV4=0.683;
PV5=0.621;
PV6=0.564;
PV7=0.513;
PV8=0.467;
PV9=0.424;
PV10=0.386;
//Present value for all cash in flows
P1=CIF1*PV1;// in Rs
P2=CIF2*PV2;// in Rs
P3=CIF3*PV3;// in Rs
P4=CIF4*PV4;// in Rs
P5=CIF5*PV5;// in Rs
P6=CIF6*PV6;// in Rs
P7=CIF7*PV7;// in Rs
P8=CIF8*PV8;// in Rs
P9=CIF9*PV9;// in Rs
P10=CIF10*PV10;// in Rs
//Total Present Value
P=P1+P2+P3+P4+P5+P6+P7+P8+P9+P10;// in Rs
disp(P,"Total present value(in Rs) is : ")
//Net Present Value at 10% discount rate
NPV=P-ICO;// in Rs
disp(NPV,"Net Present Value at 10% discount rate is : ")