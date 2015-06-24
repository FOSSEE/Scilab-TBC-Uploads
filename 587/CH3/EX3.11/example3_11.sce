clear;
clc;

//Example3.11[Selecting a Heat Sink for a Transistor]
//Given:-
Q_=60;//Rate of heat transfer from given transistor at at full power[W]
T_ambient=30;//Temperature of ambient air[degree Celcius]
T_case=90;//Maximum temperature of case[degree Celcius]
//Solution:-
R_sink=(T_case-T_ambient)/Q_;//[degree Celcius/W]
disp("degree Celcius/W",R_sink,"The thermal resistance b/w the transistor attached to the heat sink and the ambient air for the specified temperature difference is ")