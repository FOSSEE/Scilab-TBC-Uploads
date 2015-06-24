// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 5")
Pb_mep=6*10^5;//brake mean effective pressure in pa
N=600;//engine rpm
m=0.25;//specific fuel consumption in kg/KWh
D=20*10^-2;//bore of cylinder in m
L=30*10^-2;//stroke in m
k=26;//air to fuel ratio
C=43*10^3;//calorific value in KJ/kg
R=0.287;//gas constant in KJ/kg K
T=(27+273);//ambient temperature in K
P=1*10^2;//ambient pressure in Kpa
disp("brake thermal efficiency(n)=3600/(m*C)")
n=3600/(m*C)
disp("in percentage")
n=n*100
disp("brake power(BP)in KW")
disp("BP=4*Pb_mep*L*A*N/60000")
A=%pi*D^2/4;
BP=4*Pb_mep*L*A*N/60000
disp("brake specific fuel consumption,m=mf/BP")
disp("so mf=m*BP in kg/hr")
mf=m*BP
disp("air consumption(ma)from given air fuel ratio=k*mf in kg/hr")
ma=k*mf
disp("ma in kg/min")
ma=ma/60
disp("using perfect gas equation,")
disp("P*Va=ma*R*T")
disp("sa Va=ma*R*T/P in m^3/min")
Va=ma*R*T/P
disp("swept volume(Vs)=%pi*D^2*L/4 in m^3")
Vs=%pi*D^2*L/4
disp("volumetric efficiency,n_vol=Va/(Vs*(N/2)*no. of cylinder)")
n_vol=Va/(Vs*(N/2)*4)
disp("in percentage")
n_vol=n_vol*100
disp("NOTE=>In this question,while calculating swept volume in book,values of D=0.30 m and L=0.4 m is taken which is wrong.Hence above solution is solve taking right values given in book which is D=0.20 m and L=0.3 m,so the volumetric efficiency vary accordingly.")





