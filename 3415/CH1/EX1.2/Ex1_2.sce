//fiber optic communications by joseph c. palais
//example 1.2
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given

Loss=-23// total loss in dB
//to find
P2byP1=10^(Loss/10)//P2/P1 gives efficiency
mprintf(" System Efficiency=%fpercent",P2byP1*100)

