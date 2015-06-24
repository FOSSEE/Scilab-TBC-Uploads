// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 12")
m=0.5;//mass of air in kg
p1=1.013*10^5;//initial pressure of air in pa
p2=0.8*10^6;//final pressure of air in pa
T1=800;//initial temperature of air in K
n=1.2;//polytropic expansion constant
y=1.4;//expansion constant for air
Cv=0.71;//specific heat at constant volume in KJ/kg K
disp("let initial and final states be denoted by 1 and 2")
disp("for poly tropic process pressure and temperature can be related as")
disp("(p2/p1)^((n-1)/n)=T2/T1")
disp("so temperature after compression(T2)=T1*(p2/p1)^((n-1)/n) in K")
T2=T1*(p2/p1)^((n-1)/n)
disp("substituting in entropy change expression for polytropic process,") 
disp("entropy change(deltaS)inKJ/kg K")
disp("deltaS=Cv*((n-y)/(n-1))*log(T2/T1)")
deltaS=Cv*((n-y)/(n-1))*log(T2/T1)
disp("NOTE=>answer given in book i.e -244.54 KJ/kg K is incorrect,correct answer is -.24454 KJ/kg K")
disp("total entropy change(deltaS)=m*deltaS*1000 in J/K")
deltaS=m*deltaS*1000
