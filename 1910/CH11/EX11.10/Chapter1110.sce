// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 11, Example 10")
//Given a furnace which can be approximated as an equuilateral triangle duct
//The hot wall is maintained at temprature (T1)=1000K and has emmisivity(emi1)=0.75
//The cold wall is at temprature(T2)=350K and has emmisivity(emi2)=0.7
T1=1000;
T2=350;
emi1=0.75;
emi2=0.7;
//Stefan-Boltzman constant(sigma)=5.67*10^-8 W/(m^2*K^4)
sigma=5.67*10^-8;
//The third wall is reradiating zone having Q3=0
//The radiation flux leaving the hot wall is Q/A=[sigma*(T1^4-T2^4)]/(A*R)
//By summation rule F33+F31+F32=1
//F33=0(in consideration of surface to be plane)
//From symmetry F31=F32
F31=0.5;//View factors
F32=F31;//View factors
F33=0;//View factors
//From reciprocity theorem F13=F31 and F23=F32=0.5 (since A1=A2=A3=A)
F13=F31;//View factors
F23=F32;//View factors
//Again F11+F12+F13=1 from summation rule
F11=0;//View factors
F12=1-F13-F11;//View factors
//R1,R2,R12,R13,R23 are the resistances
//R is equivalent resistance of thermal network is given by R1+[(1/R12)+(1/(R13+R23))]^-1+R2
R1=(1-emi1)/(emi1);
R2=(1-emi2)/(emi2);
R12=1/(F12);
R13=1/(F13);
R23=1/(F23);
//R is equivalent resistance of thermal network 
disp("Equivalent resistance of thermal network (R) is given by R1+[(1/R12)+(1/(R13+R23))]^-1+R2")
R=R1+[(1/R12)+(1/(R13+R23))]^-1+R2
//The radiation flux leaving the hot wall is Q/A.
disp("The radiation flux leaving the hot wall is Q/A=[sigma*(T1^4-T2^4)]/(A*R) in W/m^2")
//Since A gets cancelled in the factor (A*R)
//So Q/A=[sigma*(T1^4-T2^4)]/(R)
//Let Q/A=H
H=[sigma*(T1^4-T2^4)]/(R)














