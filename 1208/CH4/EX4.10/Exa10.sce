//Exa 10
clc;
clear;
close;
//given data :
//initial cash outflows
ICO=40000;//in Rs.
//cash in flows of 1st,2nd,3rd and 4th years is same
CIF=16000;//in Rs.
//PV Factor 
PV=ICO/CIF;//unitless
disp(PV,"PV fator of the project is : ")
disp("This value is in between 2.4936 and 2.5887");
disp("Hence IRR of the project is expected to lie between 20% and 22%")
//PV of cash in flows at 20%
PV20=CIF*2.5887;//in Rs
PV22=CIF*2.4936;//in Rs
disp(PV20,"at 20% PV of cash in flows(in Rs) is : ")
disp(PV22,"at 22% PV of cash in flows(in Rs) is : ")
//By interpolation
LDR=20;//in % ;Lower discount rate
HDR=22;//in % ;Higher discount rate
P1=41419;//in Rs; Present value at lower rate of interest
P2=39898;//in Rs; Present value at higher rate of interest
IRR=LDR+((P1-ICO)/(P1-P2))*(HDR-LDR);//in % : Internal rate of return
disp(IRR,"Internal rate of return of the project(in %) : ")