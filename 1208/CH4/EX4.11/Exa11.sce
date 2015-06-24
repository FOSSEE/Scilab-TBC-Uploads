//Exa 11
clc;
clear;
close;
//given data :
//initial cash outflows
ICO=10000;//in Rs.
//cash in flows of 1st,2nd and 3rd years
CIF1=5000;//in Rs.
CIF2=4000;//in Rs.
CIF3=3000;//in Rs.
//average annual CIF
CIF=(CIF1+CIF2+CIF3)/3;//in Rs
//step 1 : calculate first trial rate
PV=ICO/CIF;//unitless
disp(PV,"Trial PV factor is : ")
disp("The rate of return at this PV is approximately 10%")
//P.V factor at 10% rate of discount
PV1=0.909;
PV2=0.826;
PV3=0.751;
//Present value for all cash in flows
P1=CIF1*PV1;// in Rs
P2=CIF2*PV2;// in Rs
P3=CIF3*PV3;// in Rs
//Total Present Value
P=P1+P2+P3;// in Rs
disp(P,"total present value of cash inflows at 10% rate is : ")
disp("As the total present value of cash inflows at 10% rate is 10102 RS. is more than the cost of investment.")
disp("The next trial rate can be taken as 12%.")
//P.V factor at 12% rate of discount
PV1=0.893;
PV2=0.797;
PV3=0.712;
//Present value for all cash in flows
P1=CIF1*PV1;// in Rs
P2=CIF2*PV2;// in Rs
P3=CIF3*PV3;// in Rs
//Total Present Value
P=P1+P2+P3;// in Rs
disp(P,"total present value of cash inflows at 12% rate is : ")
disp("As the total present value of cash inflows at 12% rate is 9789 RS. is less than the cost of investment.")
//IRR will be calculated by interpolation of these two rates
LDR=10;//in % ;Lower discount rate
HDR=12;//in % ;Higher discount rate
P1=10102;//in Rs; Present value at lower rate of interest
P2=9789;//in Rs; Present value at higher rate of interest
IRR=LDR+((P1-ICO)/(P1-P2))*(HDR-LDR);//in % : Internal rate of return
disp(IRR,"Internal rate of return of the project(in %) : ")
