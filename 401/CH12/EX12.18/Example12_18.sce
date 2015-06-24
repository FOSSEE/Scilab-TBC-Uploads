//Example 12.18
//Program to form  comparision showing total channel loss against 
//number of nodes for:
//(i)Bus Distribution System
//(ii)Star Distribution System

clear;
clc ;
close ;

//Given data
alpha_cr=1;                     //dB - CONNECTOR LOSS
alpha_fc=5;                     //dB/km - FIBER CABLE LOSS
L_bu=0.1                        //m - FIBER LENGTH
L_tr=10;                        //dB - ACCESS COUPLER TAP RATIO
L_sp=3;                         //dB - SPLITTER LOSS
L_ac=1;                         //dB - ACCESS COUPLER INSERTION LOSS
L_st=0.1;                       //m - TOTAL FIBER LENGTH IN STAR ARMS 
L_ex=0;                         //dB - STAR COUPLER EXCESS LOSS

//Bus Distribution System
N=0:0.01:11;
Cl_bus=2*alpha_cr+(N-1)*alpha_fc*L_bu+(2*alpha_cr+L_ac)*(N-3)+(2*alpha_cr+L_tr)+L_sp+alpha_cr;
Hm=abs(Cl_bus);
figure;
plot2d(N,Hm,2);

//Star Distribution System
N=1:0.01:30;
Cl_star=4*alpha_cr+alpha_fc*L_st+10*log10(N)+L_ex;
Hm=abs(Cl_star);
plot2d(N,Hm,5);
xlabel('Number of Nodes N');
ylabel('Total Channel Loss Cl(dB)');
title('CHARACTERISTICS FOR TWO DISTRIBUTION SYSTEMS (BUS AND STAR)');
xgrid (1);
h=legend(['LINEAR BUS';'STAR']);