// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 6")
T1=(-10+273);//air entering temperature in K
p1=1*10^5;//air entering pressure in pa
T3=(27+273);//compressed air temperature after cooling in K
p2=5.5*10^5;//pressure after compression in pa
m=0.8;//air flow rate in kg/s
Cp=1.005;//specific heat capacity at constant pressure in KJ/kg K
y=1.4;//expansion constant
R=0.287;//gas constant in KJ/kg K
disp("for process 1-2")
disp("(p2/p1)^((y-1)/y)=T2/T1")
disp("so T2=T1*(p2/p1)^((y-1)/y) in K")
T2=T1*(p2/p1)^((y-1)/y)
disp("for process 3-4")
disp("(p3/p4)^((y-1)/y)=T3/T4")
disp("so T4=T3/(p3/p4)^((y-1)/y)=T3/(p2/p1)^((y-1)/y)in K")
T4=T3/(p2/p1)^((y-1)/y)
disp("refrigeration capacity(Q)=m*Cp*(T1-T4) in KJ/s")
Q=m*Cp*(T1-T4)
disp("Q in ton")
Q=Q/3.5
disp("work required to run compressor(w)=(m*n)*(p2*v2-p1*v1)/(n-1)")
disp("w=(m*n)*R*(T2-T1)/(n-1) in KJ/s")
n=y;
w=(m*n)*R*(T2-T1)/(n-1)
disp("HP required to run compressor")
w/0.7457
disp("so HP required to run compressor=177.86 hp")
disp("net work input(W)=m*Cp*{(T2-T3)-(T1-T4)}in KJ/s")
W=m*Cp*{(T2-T3)-(T1-T4)}
disp("COP=refrigeration capacity/work=Q/W")
Q=63.25;//refrigeration capacity in KJ/s
COP=Q/W





