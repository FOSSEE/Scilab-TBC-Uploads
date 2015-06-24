// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 14")
T1=(27+273);//ambient temperature in K
T2=(750+273);//temperature of heated air inside heat exchanger in K
T3=(600+273);//temperature of hot air leaves turbine in K
T4=(500+273);//temperature at which air leaves nozzle in K
Cp=1.005;//specific heat at constant pressure in KJ/kg K
C2=50;//velocity of hot air enter into gas turbine in m/s
C3=60;//velocity of air leaving turbine enters a nozzle in m/s
disp("in heat exchanger upon applying S.F.E.E with assumption of no change in kinetic energy,no work interaction,no change in potential energy,for unit mass flow rate of air,")
disp("h1+Q1_2=h2")
disp("Q1_2=h2-h1")
disp("so heat transfer to air in heat exchanger(Q1_2)in KJ")
disp("Q1_2=Cp*(T2-T1)")
Q1_2=Cp*(T2-T1)
disp("in gas turbine let us use S.F.E.E,assuming no change in potential energy,for unit mass flow rate of air")
disp("h2+C2^2/2=h3+C3^2/2+Wt")
disp("Wt=(h2-h3)+(C2^2-C3^2)/2")
disp("so power output from turbine(Wt)in KJ/s")
disp("Wt=Cp*(T2-T3)+(C2^2-C3^2)*10^-3/2")
Wt=Cp*(T2-T3)+(C2^2-C3^2)*10^-3/2
disp("applying S.F.E.E upon nozzle assuming no change in potential energy,no work and heat interactions,for unit mass flow rate,")
disp("h3+C=h4+C4^2/2")
disp("C4^2/2=(h3-h4)+C3^2/2")
disp("velocity at exit of nozzle(C4)in m/s")
disp("C4=sqrt(2*(Cp*(T3-T4)+C3^2*10^-3/2))")
C4=sqrt(2*(Cp*(T3-T4)+C3^2*10^-3/2))
