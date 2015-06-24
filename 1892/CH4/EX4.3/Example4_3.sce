// Example 4.3

clear; clc; close;
format('v',6);

// Given data
Ra=0.8;//in Ω
Vdd=2;//in volt
V=28;//in volt
T1=0.3; //  in N-m
Tst=1; //  in N-m
Ist=5;//in Ampere

//Calculations
//We know : Tst = fi_1*Ist  and T1 = IL*fi_2
//Deviding these two eqn we have
IL=(T1/Tst)*Ist/0.8;//in Ampere
Ebo=V;//in volt
NLbyNo=(V-IL*Ra-Vdd)/(0.8*Ebo);// temporary calculation for NL
No=1337;//in rpm
NL=NLbyNo*No;//in rpm
disp(NL,"Speed of motor in rpm =");
