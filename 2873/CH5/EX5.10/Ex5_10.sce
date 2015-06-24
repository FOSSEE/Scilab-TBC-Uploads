// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 10")
p1=3;//initial pressure in Mpa
v1=0.05;//initial volume in m^3
v2=0.3;//final volume in m^3
disp("for reversible adiabatic process governing equation for expansion,")
disp("P*V^1.4=constant")
disp("also,for such process entropy change=0")
disp("using p2/p1=(v1/v2)^1.4 or v=(p1*(v1^1.4)/p)^(1/1.4)")
disp("final pressure(p2)in Mpa")
disp("p2=p1*(v1/v2)^1.4")
p2=p1*(v1/v2)^1.4
disp("from first law,second law and definition of enthalpy;")
disp("dH=T*dS+v*dP")
disp("for adiabatic process of reversible type,dS=0")
dS=0;//for adiabatic process of reversible type
disp("so dH=v*dP")
disp("integrating both side H2-H1=deltaH=v*dP in KJ")
p1=3*1000;//initial pressure in Kpa
p2=244;//final pressure in Kpa
disp("so enthalpy change(deltaH)in KJ")
function y = f(p), y =(p1*(v1^1.4)/p)^(1/1.4), endfunction
deltaH = intg(p2, p1, f) 
disp("and entropy change=0")
