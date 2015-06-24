clear;
clc;

//Example2.8[Convection and Insulation Boundary Conditions]
//Given:-
T_steam=200;//Temperature of steam[degree Celcius]
r_in=0.08;//Inner radii of pipe[m]
r_out=0.085;//Outer radii of pipe[m]
h=65;//convection heat transfer coefficient on the inner surface of the pipe[W/m^2.K]
//Heat transfer through the pipe material predominantly is in the radial direction and thus can be approximated as being one-dimensional
disp("Taling the direction of heat transfer to be the positive r direction, the boundary condition on that surface can be expressed as")
disp("-k(dT(r_in,t)/dr)=h(T_steam-T(r1))")
//The pipe is said to be well insulated on the outside, and thus heat loss through the outer surface of the pipe can be assumed to be negligible.
disp("Then the boundary at the outer surface can be expressed as")
disp("dT(r_out,t)/dr=0")