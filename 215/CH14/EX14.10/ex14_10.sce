clc
//Example 14.10
//Install Symbolic toolbox
//Determine the transform of rectangular pulse
syms t s
v=integ(exp(-s*t),t,2,%inf)-integ(exp(-s*t),t,5,%inf)
disp(v,'V(s)=')