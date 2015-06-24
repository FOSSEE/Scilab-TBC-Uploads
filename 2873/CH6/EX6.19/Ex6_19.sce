// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 19")
m=3;//mass of wet steam in kg
p=1.4;//pressure of wet steam in bar
V1=2.25;//initial volume in m^3
V2=4.65;//final volume in m^3
T=400;//temperature of steam in degreee celcius
disp("from steam table,vg=1.2455 m^3/kg,hf=457.99 KJ/kg,hfg=2232.3 KJ/kg")
vg=1.2455;
hf=457.99;
hfg=2232.3;
disp("specific volume of wet steam in cylinder,v1=V1/m in m^3/kg")
v1=V1/m
disp("dryness fraction of initial steam(x1)=v1/vg")
x1=v1/vg
x1=0.602;//approx.
disp("initial enthalpy of wet steam,h1=hf+x1*hfg in KJ/kg")
h1=hf+x1*hfg
disp("at 400 degree celcius specific volume of steam,v2=V2/m in m^3/kg")
v2=V2/m
disp("for specific volume of 1.55 m^3/kg at 400 degree celcius the pressure can be seen from the steam table.From superheated steam tables the specific volume of 1.55 m^3/kg lies between the pressure of 0.10 Mpa (specific volume 3.103 m^3/kg at400 degree celcius)and 0.20 Mpa(specific volume 1.5493 m^3/kg at 400 degree celcius)")
disp("actual pressure can be obtained by interpolation")
p2=.1+((0.20-0.10)/(1.5493-3.103))*(1.55-3.103)
disp("p2=0.20 MPa(approx.)")
p2=0.20;
disp("saturation temperature at 0.20 Mpa(t)=120.23 degree celcius from steam table")
t=120.23;
disp("finally the degree of superheat(T_sup)in K")
disp("T_sup=T-t")
T_sup=T-t
disp("final enthalpy of steam at 0.20 Mpa and 400 degree celcius,h2=3276.6 KJ/kg from steam table")
h2=3276.6;
disp("heat added during process(deltaQ)in KJ")
disp("deltaQ=m*(h2-h1)")
deltaQ=m*(h2-h1)
disp("internal energy of initial wet steam,u1=uf+x1*ufg in KJ/kg")
disp("here at 1.4 bar,from steam table,uf=457.84 KJ/kg,ufg=2059.34 KJ/kg")
uf=457.84;
ufg=2059.34;
u1=uf+x1*ufg
disp("internal energy of final state,u2=u at 0.2 Mpa,400 degree celcius")
disp("u2=2966.7 KJ/kg")
u2=2966.7;
disp("change in internal energy(deltaU)in KJ")
disp("deltaU=m*(u2-u1)")
deltaU=m*(u2-u1)
disp("form first law of thermodynamics,work done(deltaW)in KJ")
disp("deltaW=deltaQ-deltaU")
deltaW=deltaQ-deltaU
disp("so heat transfer(deltaQ)in KJ")
deltaQ
disp("and work transfer(deltaW)in KJ")
deltaW
disp("NOTE=>In book value of u1=1707.86 KJ/kg is calculated wrong taking x1=0.607,hence correct value of u1 using x1=0.602 is 1697.5627 KJ/kg")
disp("and corresponding values of heat transfer= 4424.2962 KJ and work transfer=616.88424 KJ.")






















