// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 13 Example 2")
To=(273+1100);//stagnation temperature in K
a=45;//mach angle over exit cross-section in degree
Po=1.01;//pressure at upstream side of nozzle in bar
P=0.25;//ststic pressure in bar
y=1.4;//expansion constant 
R=287;//gas constant in J/kg K
disp("mach number,M_a=(1/sin(a))=sqrt(2)")
M_a=sqrt(2)
M_a=1.414;//approx.
disp("here,P/Po=0.25/1.01=0.2475.Corresponding to this P/Po ratio the mach number and T/To can be seen from air table as M=1.564 and T/To=0.6717")
M=1.564;
disp("T=To*0.6717 in K")
T=To*0.6717
disp("and C_max=M*sqrt(y*R*T) in m/s")
C_max=M*sqrt(y*R*T)
disp("corresponding to mach number(M_a=1.414)as obtained from experimental observation,the T/To can be seen from air table and it comes out as (T/To)=0.7145")
disp("so T=0.7145*To in K")
T=0.7145*To
disp("and C_av=M_a*sqrt(y*R*T) in m/s")
C_av=M_a*sqrt(y*R*T)
disp("ratio of kinetic energy=((1/2)*C_av^2)/((1/2)*C_max^2)")
((1/2)*C_av^2)/((1/2)*C_max^2)
disp("so ratio of kinetic energy=0.869")







