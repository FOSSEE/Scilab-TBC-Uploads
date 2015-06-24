// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 12")
disp("If N is the number of stages, then overall pressure rise is:")
disp("R = (1+(N*DeltaT0s)/T01)^((n-1)/n)")
disp("Exp=(n-1)/n = etaac *gam/(gam-1)")
disp("(where hac is the polytropic efficiency) substituting values")
etaac = 0.87;
gam = 1.4;
Exp = etaac *gam/(gam-1)
R=4.5;
Cp = 1005;
DeltaTs = 22;
T01 = 290;
N = ((R^(1/3.05)) -1)*T01/DeltaTs
disp("Hence number of stages = 8")
disp("Stagnation temperature rise, DeltaTs, per stage = 22K, as we took 8 stages, therefore")
DeltaT0s = DeltaTs*N/8
disp("From velocity triangle cos(a8) = Ca8/C8")
alpha8 = 20;
C8 = 160;
Ca8 = C8*cos(alpha8*%pi/180)
disp("Using degree of reaction, DOF = 0.5")
disp("0.5 = Ca8(tanbeta8 + tanbeta9)/(2U)")
disp("0.5 = 150.35(tanbeta8 + tanbeta9)/2U -------(A)")
disp("DelTaT0s = TauUCa8*(tanbeta8 - tanbeta9)/Cp")
disp("23.1 = 0.85*U*150.35(tanbeta8 - tan20)/1005 ------(B)")
Tau = 0.85;
beta9 = alpha8;
disp("From Eq. (A) U = 150.35(tanbeta8 - 0.364) ------(C)")
disp("From Eq. (B) U = 181.66/(tanbeta8 - 0.364) ------(D)")
disp("Comparing Eqs. (C) and (D), we have")
disp("150.35(tanbeta8 + 0.364)= 181.66/(tanbeta8 - 0.364)")
disp("(tan(beta8))^2 = p")
p = 181.66/150.35 + 0.364^2
beta8 = atan(p^0.5)*180/%pi
disp("Substituting in Eq. (C)")
U = Ca8*(tan(beta8*%pi/180) + tan(beta9*%pi/180))
disp("The rotational speed is given by N in rps")
N = U/(2*%pi*0.0925)
disp("In order to find the length of the last stage rotor blade at inlet to the stage, it is necessary to calculate stagnation temperature and pressure ratio of the last stage.")
disp("Stagnation temperature of last stage: Fig. Ex512")
T08 = T01 + 7*DeltaT0s
disp("Pressure ratio of the first stage is: Rat = P09/P08")
Rat = 1.1643
disp("Rat1 = P09/P01")
Rat1 = 4
P01 = 1;//in bars
P09 = Rat1*P01//bars
P08 = P09/Rat
T8 = T08 - C8^2 /(2*Cp)
disp("Using stagnation and static isentropic temperature relationship for the last stage, we have pressure in bars")
P8 = P08*(T8/T08)^(3.5)
R = 287;
rho8 = P8/(R*T8)*100000//in kg/m3
disp("Using mass flow rate m = rho8*A8*Ca8")
m = 3.5;
A8 = m/(rho8*Ca8)
r = 0.0925;
h = A8/(2*%pi*r)
disp("i.e., length of the last stage rotor blade at inlet to the stage, h = 16.17 mm.")
