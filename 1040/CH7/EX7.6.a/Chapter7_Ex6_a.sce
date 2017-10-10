//Harriot P,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-7 Ex7.6.a Pg No.300
//Title:Fraction of O2 used
//======================================================================================================================
clear
clc
//INPUT
Vol_reactor=200;//Volume of reactor (m3)
D=4;//Diameter of reactor (m)
depth=12;//Depth of reactor (m) 
u_g=3;//Superficial velocity (cm/sec)
T_C=30;//Temperature (°C)
T_K=273+T_C;//Temperature  (K)
f_O2=0.21;//Fraction of O2 in air
myu_soln=1.5*(10^(-3));//Viscosity of solution (Pa sec)
R=0.08206;//Gas constant (m3 atm/ K kmol)
r_O2_peak=45*(10^(-3));//Flow rate of O2 at peak demand 

//CALCULATION
S=%pi*(D^2)/4;//Cross section area (m2)
V=S*depth;//Volume of solution(m3)
F_air=(S*u_g*(10^(-2))*3600)/(R*(10^(-3))*T_K);
F_O2=f_O2*F_air;//Feed rate of O2 (mol/hr)
F_O2_used=r_O2_peak*V*(10^(3));//O2 used for aerobic fermentation (mol/hr)
F_O2_left=F_O2-F_O2_used;//O2 left after aerobic fermentation(mol/hr)
f_O2_exitgas=F_O2_left/F_air;//Fraction of O2 in exit gas
Percent_O2_exitgas=(f_O2_exitgas)*(100);
Frac_O2_used=((f_O2-f_O2_exitgas)/f_O2);

//OUTPUT
//Console Output
mprintf('\n\tAt the peak demand, fraction of the oxygen supplied = %.3f ',Frac_O2_used);
//File Output
fid= mopen('.\Chapter7_Ex6_a_Output.txt','w');
mfprintf(fid,'\n\tAt the peak demand, fraction of the oxygen supplied = %.3f ',Frac_O2_used);
mclose('all');
//===================================================END OF PROGRAM======================================================
//Disclaimer: The numerically calculated value of oxygen fraction supplied is 0.592 not 0.591 as mentioned in the textbook
 





