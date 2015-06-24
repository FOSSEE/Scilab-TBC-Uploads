clear;
clc;

//Example2.10[Combined Convection, Radiation and Heat Flux]
//Given:-
T_surf1=20;//Ambient temperature in the interior of the house[degree Celcius]
T_surf2=5;// Ambient temperature outside the house[degree Celcius]
L=0.2;// Thickness of the wall[m]
a=0.5;// absorptivity of outer surface of wall
h_in=6;//Convection heat transfer coefficient for inner surface of wall[W/m^2.degree Celcius]
h_out=25;//Convection heat transfer coefficient for outer surface of wall[W/m^2.degree Celcius]
k=0.7;//The thermal conductivity of wall material[W/m.degree Celcius]
e=0.9;//Emissivity of outer surface of wall
//Solution:-
//The heat transfer though the wall is given to be steady and one dimensional and thus temperature depends on x only i.e. T=T(x)
disp("The boundary condition ont the inner surface of the wall at x=0 can be expressed as -k(dT(0)/dx)=h_in[T_surf1-T(0)]")
disp("degree Celcius",T_surf1,"and","W/m^2.degree Celcius",h_in,"where h_in and T_surf are respectively ")
disp("The boundary condition on the outer surface at x=L can be expressed as ")
disp("-kdT(L)/dx=h_out[T(L)-T_surf2]+e*sigma[(T(L)^4)-(T_sky^4)]-a*q_solar")
disp("where T_sky is temperature of the sky and q_solar is the incident solar heat flux")