//Exa 9
clc;
clear;
close;
//given data :
//initial cash outflows
ICO=50000;//in Rs.
//cash in flows of 1st,2nd,3rd and 4th years
CIF1=20000;//in Rs.
CIF2=15000;//in Rs.
CIF3=25000;//in Rs.
CIF4=10000;//in Rs.
//P.V factor at 10% rate of discount
PV1=0.909;
PV2=0.826;
PV3=0.751;
PV4=0.683;
//Present value for all cash in flows
P1=CIF1*PV1;// in Rs
P2=CIF2*PV2;// in Rs
P3=CIF3*PV3;// in Rs
P4=CIF4*PV4;// in Rs
//Total Present Value
P=P1+P2+P3+P4;// in Rs
//Net Present Value
NPV=P-ICO;// in Rs
disp(NPV,"Net Present Value is : ")
//profitabolity index
PVI=P/ICO;// unitless
disp(PVI,"Profitability Index of the project as calculated is : ")
disp("As Profitability Index of the project is greater than 1, the proposal can be accepted.")
//Net profitability
NPVI=NPV/ICO;
disp(NPVI,"Net profitability of the project is : ")
disp("As Net Profitability Index of the project is +ve, the proposal may be accepted.")

