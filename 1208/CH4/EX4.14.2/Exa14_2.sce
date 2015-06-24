//Exa 14(ii)
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
//part (ii) calculation of ARR
ARR=(IATD/AvgInv)*100;//in %
disp(ARR,"Part(ii) Average rate of return (in %) : ")

