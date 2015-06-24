// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 1")
h1=30;//heat transfer coefficient on side of 50 oc in W/m^2 K
h5=10;//heat transfer coefficient on side of 20 oc in W/m^2 K
k_brick=0.9;//conductivity of brick in W/m K
k_wood=0.15;//conductivity of wood in W/m K
T1=50;//temperature of air on one side of wall in degree celcius
T5=20;//temperature of air on other side of wall in degree celcius
A=100;//surface area in m^2
deltax_brick=1.5*10^-2;//length of brick in m
deltax_wood=2*10^-2;//length of wood in m
disp("here for one dimentional heat transfer across the wall the heat transfer circuit shall comprises of thermal resistance due to convection between air & brick(R1),conduction in brick wall(R2),conduction in wood(R3),and convection between wood and air(R4).Let temperature at outer brick wall be T2 K,brick-wood interface be T3 K,outer wood wall be T4 K")
disp("overall heat transfer coefficient for steady state heat transfer(U)in W/m^2 K")
disp("(1/U)=(1/h1)+(deltax_brick/k_brick)+(deltax_wood/k_wood)+(1/h5)")
disp("so U=1/((1/h1)+(deltax_brick/k_brick)+(deltax_wood/k_wood)+(1/h5))")
U=1/((1/h1)+(deltax_brick/k_brick)+(deltax_wood/k_wood)+(1/h5))
U=3.53;//approx.
disp("rate of heat transfer,Q=U*A*(T1-T5)in W")
Q=U*A*(T1-T5)
disp("so rate of heat transfer=10590 W")
disp("heat transfer across states 1 and 3(at interface).")
disp("overall heat transfer coefficient between 1 and 3")
disp("(1/U1)=(1/h1)+(deltax_brick/k_brick)")
disp("so U1=1/((1/h1)+(deltax_brick/k_brick))in W/m^2 K")
U1=1/((1/h1)+(deltax_brick/k_brick))
disp("Q=U1*A*(T1-T3)")
disp("so T3=T1-(Q/(U1*A))in degree celcius")
T3=T1-(Q/(U1*A))
disp("so temperature at interface of brick and wood =44.71 degree celcius")
