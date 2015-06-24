// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 6")
N=3000;//engine rpm
m=5;//fuel consumption in litre/hr
r=19;//air-fuel ratio
sg=0.7;//specific gravity of fuel
V=500;//piston speed in m/min
P_imep=6*10^5;//indicated mean effective pressure in pa
P=1.013*10^5;//ambient pressure in pa
T=(15+273);//ambient temperature in K
n_vol=0.7;//volumetric efficiency 
n_mech=0.8;//mechanical efficiency
R=0.287;//gas constant for gas in KJ/kg K
disp("let the bore diameter be (D) m")
disp("piston speed(V)=2*L*N")
disp("so L=V/(2*N) in m")
L=V/(2*N)
L=0.0833;//approx.
disp("volumetric efficiency,n_vol=air sucked/(swept volume * no. of cylinder)")
disp("so air sucked/D^2=n_vol*(%pi*L/4)*N*2 in m^3/min")
n_vol*(%pi*L/4)*N*2
disp("so air sucked =274.78*D^2 m^3/min")
disp("air requirement(ma),kg/min=A/F ratio*fuel consumption per min")
disp("so ma=r*m in kg/min")
ma=r*m*sg/60
disp("using perfect gas equation,P*Va=ma*R*T")
disp("so Va=ma*R*T/P in m^3/min")
Va=ma*R*T*1000/P 
disp("ideally,air sucked=Va")
disp("so 274.78*D^2=0.906")
disp("D=sqrt(0.906/274.78) in m")
D=sqrt(0.906/274.78) 
disp("indicated power(IP)=P_imep*L*A*N*no.of cylinders in KW")
IP=P_imep*L*(%pi*D^2/4)*(N/60)*2/1000
disp("brake power=indicated power*mechanical efficiency")
disp("BP=IP*n_mech in KW")
BP=IP*n_mech 
disp("so brake power=10.34 KW")






