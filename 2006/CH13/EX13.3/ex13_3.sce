clc;
// Let take NH3 as component 1 and H2O as component 2
// (a) & (b)
// Calculation of f1sat = pi1sat*p1sat for ammonia
P_1=50; // low reference state pressure in kPa
P1sat=614.95; // Saturation Pressure of ammonia at 10 oC in kPa
h1sat=1453.3; // Specific enthalpy at 10 oC in kJ/kg
s1sat=5.2104; // Specific entropy at 10 oC in kJ/kg K
R=8.3144/17; // Characteristic gas constant
T=283; // Temperature in kelvin
// At 10 oC and P_1=50 kPa for ammonia
h_1sat=1499.2; // Specific enthalpy in kJ/kg
s_1sat=6.5625; // Specific entropy in kJ/kg K
f1sat=P_1*exp ((((h1sat-h_1sat)/T)-(s1sat-s_1sat))/R); // Standard state fugacity of Ammonia
disp ("kPa",f1sat,"Standard state fugacity of Ammonia = ","(a) & (b)");
// Calculation of f2sat = pi2sat*p2sat for water
P2sat=1.2276; // Saturation Pressure at 10 oC in kPa for water
pi2sat=1; // At low pressure for water
f2sat = pi2sat*P2sat; // Standard state fugacity of water
disp ("kPa",f2sat,"Standard state fugacity of water = ");
// Calulations of ViL/RT
// For ammonia and water at 10 oC
v1L=0.001601; v2L=0.001; // Specific volume in m^3/kg
v1L_RT=v1L/(R*T); v2L_RT=v2L/(R*T);
disp (v2L_RT,"v2L/RT = ","(answer mentioned in the textbook is wrong)",v1L_RT,"v1L/RT = ");
// Calculations of activity coefficients
// Expression for activity coefficients of ammonia and water become in given by respectively
// r_1=(y1*p/(x1*569.6))*exp (-4.34*10^-6*(p-p1sat)); for ammonia
//  r_2=(y2*p/(x2*1.2276))*exp (-7.65*10^-6*(p-p2sat)); for water
// The values thus calculated for r_1,r_2,lny_1,lnr_2 are calculated and plotted in window 1
// Note that the values of pyonting factors are negligibly small
x1=[0,0.2,0.3,0.4,0.5,0.6,0.8,1.0];
y1=[0,0.963,0.986,0.9958,0.9985,0.9993,0.9999,1.0];
lnr_1=[-3.1,-1.845,-1.295,-0.75,-0.33,-0.065,-0.035,-0];
lnr_2=[0,-0.1397,-0.2767,-0.507,-0.709,-0.952,-1.613,-2.2];
// similarly the excess function gE/RT and gE/x1x2RT are also calculated using the following expression respectively
// gE_RT=x1*lnr_1+x2*lnr_2; // the excess function from 12.51
 // gE_x1x2RT=(lnr_1/x2)+(lnr_2/x1);
// since gE=0 & x1x2=0 both at x1=0 and x1=1. However its values in between x1=0 & x1=1
// By substituting these values in the above expression and given below
gE_RT=[0,-0.481,-0.582,-0.604,-0.5195,-0.4198,-0.2925,0];
gE_x1x2RT=[-3.1,-2.92,-2.83,-2.74,-2.65,-2.56,-2.38,-2.2];
xset('window',1); // For Plotting  Diagram
plot (x1,lnr_1,"b*-",x1,lnr_2,"g*-",x1,gE_RT,"r",x1,gE_x1x2RT,"k*-");
title ("(a)&(b).Activity coefficients for NH3/H2O at 10 oC","fontsize",4,"color","blue");
xlabel(" x1 → ","fontsize",4,"color","blue");
ylabel(" ln γ → ","fontsize",4,"color","blue");
legend(["ln γ1";"ln γ2";"gE/RT";"gE/x1x2 RT"],[4]);
disp ("Refer window 1 for plots");
// As x1→0,x2→1,gE_x1x2RT→A=ln r_1^∞
// As x1→1,x2→0,gE_x1x2RT→B=ln r_2^∞
A=-3.1; B=-2.2; // THe Margules constants
disp (B,"B = ",A,"A = ","The Margules constants ");
disp ("From window 1 for ammonia/water mixture which is characteristic of systems with negative deviation from Roault law. Because γi<=1   and   ln γi <=0");
// (c).
// Assuming ideal vapour phase, and at low pressures we have 
// y1P=γ1*x1*p1sat; y2p=γ2* x2* p2sat;
// Now the activity coefficients can be found from Margules equations and given below
x1=[0,0.2,0.3,0.4,0.5,0.6,1.0];
y1=[0,0.963,0.986,0.9958,0.9985,0.9999,1.0];
p=[1.2276,8.6597,30.6598,54.6845,150.6458,278.1549,614.95];
// The ideal solution pressure
 // PRaoult=x1*P1sat+x2*P2sat;
PRaoult=[1.2276,614.95]; x_1=[0,1]; // For Ideal solution pressure
xset('window',2); // For Plotting  Diagram
plot (x1,p,"r*-",y1,p,"b*-",x_1,PRaoult,"g");
title ("(c).p-x-y diagram of NH3/H2O at 10 oC","fontsize",4,"color","blue");
xlabel(" x1 → & y1 → ","fontsize",4,"color","blue");
ylabel(" p, kPa  → ","fontsize",4,"color","blue");
legend(["p-x1";"p-y1";"PRaoult"],[2]);
disp ("For p-x-y diagram refer window 2","(c).")
disp ("From window 2 The actual pressure p < pRaoult. It is thus seen that the mixture has negative deviation  from Raoults law.");
