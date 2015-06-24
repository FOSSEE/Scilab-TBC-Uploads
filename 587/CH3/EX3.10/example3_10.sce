clear;
clc;

//Example3.10[Maximum Power dissipation of a Transistor]
//Given:-
T_ambient=25;//Ambient temperature[degree Celcius]
T_case=85;//Maximum temperature of the case[degree Celcius]
R_case_ambient=20;//Resistance for convection b/w case and ambient [degree Celcius/W]
//Solution:-
Q_=(T_case-T_ambient)/R_case_ambient;//[W]
disp("W",Q_,"The given power transistor should not be operated at power levels above")
disp("if is its case temperature is not to exceed 85 degree Celcius")