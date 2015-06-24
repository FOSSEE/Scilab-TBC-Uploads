// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 10")
V=16;//voltage drop in V
I=5;//current in cable in A
r2=8*10^-3/2;//outer cable radius in m
r3=3*10^-3/2;//copper wire radius in m
k=0.16;//thermal conductivity of copper wire in W/m oc
L=5;//length of cable in m
h1=15;//heat transfer coefficient of cable in W/m^2 oc
T1=40;//temperature of surrounding in degree celcius
disp("Let us carry out one dimentional analysis for steady state.Due to flow of electricity the heat generated can be given as:")
disp("Q=V*I in W")
Q=V*I
disp("For steady state which means there should be no change in temperature of cable due to electricity flow,the heat generated should be transferred out to surroundings.Therefore,heat transfer across table should be 80 W")
disp("surface area for heat transfer,A2=2*%pi*r*L in m^2")
A2=2*%pi*r2*L
A2=0.125;//approx.
disp("R1=thermal resistance due to convection between surroundings and cable outer surface,(1-2)=1/(h1*A2)")
disp("R2=thermal resistance due to conduction across plastic insulation(2-3)=log(r2/r3)/(2*%pi*k*L)")
disp("Total resistance,R_total=R1+R2 in oc/W")
R_total=(1/(h1*A2))+(log(r2/r3)/(2*%pi*k*L))
disp("Q=(T3-T1)/R_total")
disp("so T3=T1+Q*R_total in degree celcius")
T3=T1+Q*R_total
disp("so temperature at interface=125.12 degree celcius")
disp("critical radius of insulation,rc=k/h in m")
rc=k/h1
disp("rc in mm")
rc=rc*1000
disp("This rc is more than outer radius of cable so the increase in thickness of insulation upon rc=110.66 mmwould increase rate of heat transfer.Doubling insulation thickness means new outer radius would be r1=1.5+5=6.5 mm.Hence doubling(increase) of insulation thickness would increase heat transfer and thus temperature at interface would decrease if other parameters reamins constant.")
disp("NOTE=>In this question value of R_total is calculated wrong in book,hence it is correctly solve above,so the values of R_total and T3 may vary.")





