//Exa 14(v)
clc;
clear;
close;
//given data :
inINV=50000;//initial investment in Rs. and equal for all projects
life=5;//in years
salvage=0;//in Rs.
TaxRate=55;//in %
//depreciation type :Straight line 
D=inINV/life;//in Rs
//cash flows before tax of 1st,2nd,3rd,4th and 5th years
CBFT1=10000;//in Rs.
CBFT2=11000;//in Rs.
CBFT3=14000;//in Rs.
CBFT4=15000;//in Rs.
CBFT5=25000;//in Rs.
//Income before tax after depreciation
IBT1=CBFT1-D;//in Rs.
IBT2=CBFT2-D;//in Rs.
IBT3=CBFT3-D;//in Rs.
IBT4=CBFT4-D;//in Rs.
IBT5=CBFT5-D;//in Rs.
//Net income after Tax (55%) and depreciation
IATD1=IBT1-(IBT1*55)/100;//in Rs
IATD2=IBT2-(IBT2*55)/100;//in Rs
IATD3=IBT3-(IBT3*55)/100;//in Rs
IATD4=IBT4-(IBT4*55)/100;//in Rs
IATD5=IBT5-(IBT5*55)/100;//in Rs
//Average annual income after tax and depreciation
IATD=(IATD1+IATD2+IATD3+IATD4+IATD5)/5;//in Rs.
//Average Investment
AvgInv=(inINV+salvage)/2;//in Rs
//Annual cash inflows
ACI1=IATD1+D;//in RS
ACI2=IATD2+D;//in RS
ACI3=IATD3+D;//in RS
ACI4=IATD4+D;//in RS
ACI5=IATD5+D;//in RS
//Project A : Cummulative cash in flows of 1st,2nd,3rd,4th and 5th years
CumCIF1=ACI1;//in Rs.
CumCIF2=ACI1+ACI2;//in Rs.
CumCIF3=ACI1+ACI2+ACI3;//in Rs.
CumCIF4=ACI1+ACI2+ACI3+ACI4;//in Rs.
CumCIF5=ACI1+ACI2+ACI3+ACI4+ACI5;//in Rs.
//part (v) Internal Rate of return
disp("As the total present value of cash inflows at 10% rate is 45352 RS. is less than the cost of investment.")
disp("The next trial rate can be taken as 8%.")
//PV at 8%
//P.V factor at 8% rate of discount
PV1=0.926;
PV2=0.857;
PV3=0.794;
PV4=0.735;
PV5=0.681;
//Present value for all cash in flows at 8% discount Rate
P1=ACI1*PV1;// in Rs
P2=ACI2*PV2;// in Rs
P3=ACI3*PV3;// in Rs
P4=ACI4*PV4;// in Rs
P5=ACI5*PV5;// in Rs
//Total Present Value
P=P1+P2+P3+P4+P5;// in Rs
disp(P,"Total Present Value at 8% discount rate.")
disp("As the total present value of cash inflows at 8% rate is 47996 RS. is less than the cost of investment.")
disp("The next trial rate can be taken as 6%.")
//PV at 6%
//P.V factor at 6% rate of discount
PV1=0.943;
PV2=0.890;
PV3=0.840;
PV4=0.792;
PV5=0.747;
//Present value for all cash in flows at 6% discount Rate
P1=ACI1*PV1;// in Rs
P2=ACI2*PV2;// in Rs
P3=ACI3*PV3;// in Rs
P4=ACI4*PV4;// in Rs
P5=ACI5*PV5;// in Rs
//Total Present Value
P=P1+P2+P3+P4+P5;// in Rs
disp("As the total present value of cash inflows at 6% rate is 50857 RS. is more than the cost of investment.")
//IRR will be calculated by interpolation of these two rates 6% and 8%
LDR=6;//in % ;Lower discount rate
HDR=8;//in % ;Higher discount rate
P1=50857;//in Rs; Present value at lower rate of interest
P2=47996;//in Rs; Present value at higher rate of interest
IRR=LDR+((P1-inINV)/(P1-P2))*(HDR-LDR);//in % : Internal rate of return
disp(IRR,"Part(v) Internal rate of return of the project(in %) : ")