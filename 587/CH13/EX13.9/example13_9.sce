clear;
clc;

//Example13.9[Radiation Heat Transfer in a Triangular Furnace]
//Given:-
A1=1,A2=1,A3=1;//Area of each side[m^2]
T1=600,T2=1000;//[K]
e=0.7;
F12=0.5,F13=0.5,F23=0.5;//Symmetry
//Solution:-
Eb1=5.67*10^(-8)*(T1^4);//[W/m^2]
Eb2=5.67*10^(-8)*(T2^4);//[W/m^2]
Q=(Eb2-Eb1)/(((1-e)/(A1*e))+((((A1*F12)+(1/((1/(A1*F13))+(1/(A2*F23))))))^(-1)));//[kW]
disp("kW",round(Q/1000),"Heat at the rate of")
disp("must be supplied to the heated surface per unit lemgth of the duct to maintain steady operation in the furnace")