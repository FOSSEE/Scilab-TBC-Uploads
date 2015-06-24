//Exa 13.5
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
//Cummulative cash in flows of 10 years
CumCIF1=14000;//in Rs.
CumCIF2=28000;//in Rs.
CumCIF3=42000;//in Rs.
CumCIF4=560000;//in Rs.
CumCIF5=70000;//in Rs.
CumCIF6=86000;//in Rs.
CumCIF7=106000;//in Rs.
CumCIF8=136000;//in Rs.
CumCIF9=156000;//in Rs.
CumCIF10=164000;//in Rs.
//P.V factor at 15% rate of discount
PV1=0.870;
PV2=0.756;
PV3=0.658;
PV4=0.572;
PV5=0.497;
PV6=0.432;
PV7=0.376;
PV8=0.327;
PV9=0.284;
PV10=0.247;
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
//IRR By interpolation
LDR=10;//in % ;Lower discount rate
HDR=15;//in % ;Higher discount rate
P1=97922;//in Rs; Present value at lower rate of interest
P2=78840;//in Rs; Present value at higher rate of interest
IRR=LDR+((P1-ICO)/(P1-P2))*(HDR-LDR);//in % : Internal rate of return
disp(IRR,"Internal rate of return of the project(in %) : ")