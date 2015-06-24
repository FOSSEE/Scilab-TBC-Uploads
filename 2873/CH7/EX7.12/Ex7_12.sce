// Display modeK
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 12")
h1=4142;//enthalpy at entrance in KJ/kg
h2=2585;//enthalpy at exit in KJ/kg
W1=1787;//availability of steam at entrance in KJ/kg
W2=140;//availability of steam at exit in KJ/kg
disp("here dead state is given as 300 K and maximum possible work for given change of state of steam can be estimated by the difference of flow availability as given under:")
disp("W_max=W1-W2 in KJ/kg")
W_max=W1-W2
disp("actual work from turbine,W_actual=h1-h2 in KJ/kg")
W_actual=h1-h2
disp("so actual work=1557 KJ/kg")
disp("maximum possible work=1647 KJ/kg")
