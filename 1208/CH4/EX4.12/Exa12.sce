//Exa 12
clc;
clear;
close;
//given data :
//initial cash outflows
ICO=70000;//in Rs.
//cash in flows of 1st,2nd,3rd,4th and 5th years
CIF1=50000;//in Rs.
CIF2=40000;//in Rs.
CIF3=20000;//in Rs.
CIF4=10000;//in Rs.
CIF5=10000;//in Rs.
//P.V factor at 35% rate of discount
PV1=0.741;
PV2=0.549;
PV3=0.406;
PV4=0.301;
PV5=0.223;
//Present value for all cash in flows
P1=CIF1*PV1;// in Rs
P2=CIF2*PV2;// in Rs
P3=CIF3*PV3;// in Rs
P4=CIF4*PV4;// in Rs
P5=CIF5*PV5;// in Rs
//Total Present Value
P=P1+P2+P3+P4+P5;// in Rs
disp(P,"Total present value(in Rs) is : ")
disp("As the total present value of cash inflows at 35% rate is 72370 RS. is more than the cost of investment.")
disp("The next trial rate can be taken as 40%.")
//P.V factor at 40% rate of discount
PV1=0.714;
PV2=0.510;
PV3=0.364;
PV4=0.260;
PV5=0.186;
//Present value for all cash in flows
P1=CIF1*PV1;// in Rs
P2=CIF2*PV2;// in Rs
P3=CIF3*PV3;// in Rs
P4=CIF4*PV4;// in Rs
P5=CIF5*PV5;// in Rs
//Total Present Value
P=P1+P2+P3+P4+P5;// in Rs
disp(P,"Total present value(in Rs) is : ")
disp("As the total present value of cash inflows at 40% rate is 67840 RS. is less than the cost of investment.")
//IRR will be calculated by interpolation of these two rates
LDR=35;//in % ;Lower discount rate
HDR=40;//in % ;Higher discount rate
P1=72370;//in Rs; Present value at lower rate of interest
P2=67840;//in Rs; Present value at higher rate of interest
IRR=LDR+((P1-ICO)/(P1-P2))*(HDR-LDR);//in % : Internal rate of return
disp(IRR,"Internal rate of return of the project(in %) : ")
//Minimum desired rate of return fixed by management is 25%
disp("As the calculated IRR is greater than the minimum fixed rate. Project should be acepted.")

