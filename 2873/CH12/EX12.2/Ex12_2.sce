// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 2")
h1=40;//average heat transfer coefficient at inner surface in KJ/m^2 hr oc
h6=50;//average heat transfer coefficient at outer surface in KJ/m^2 hr oc
deltax_steel=2*10^-3;//mild steel sheets thickness in m
deltax_wool=5*10^-2;//thickness of glass wool insulation in m
k_wool=0.16;//thermal conductivity of wool in KJ/m hr
k_steel=160;//thermal conductivity of steel in KJ/m hr
T1=25;//kitchen temperature in degree celcius
T6=5;//refrigerator temperature in degree celcius
disp("here thermal resistances are")
disp("R1=thermal resistance due to convection between kitchen air and outer surface of refrigerator wall(T1 & T2)")
disp("R2=thermal resistance due to conduction across mild steel wall between 2 & 3(T2 & T3)")
disp("R3=thermal resistance due to conduction across glass wool between 3 & 4(T3 & T4)")
disp("R4=thermal resistance due to conduction across mild steel wall between 4 & 5(T4 & T5)")
disp("R5=thermal resistance due to convection between inside refrigerator wall and inside of refrigerator between 5 & 6(T5 & T6)")
disp("overall heat transfer coefficient for one dimentional steady state heat transfer")
disp("(1/U)=(1/h1)+(deltax_steel/k_steel)+(deltax_wool/k_wool)+(deltax_steel/k_steel)+(1/h6)")
disp("so U=1/((1/h1)+(deltax_steel/k_steel)+(deltax_wool/k_wool)+(deltax_steel/k_steel)+(1/h6))in KJ/m^2hr oc")
U=1/((1/h1)+(deltax_steel/k_steel)+(deltax_wool/k_wool)+(deltax_steel/k_steel)+(1/h6))
U=2.8;//approx.
disp("rate of heat transfer(Q)=U*A*(T1-T6)in KJ/m^2 hr")
disp("wall surface area(A) in m^2")
A=4*(1*0.5)
Q=U*A*(T1-T6)
disp("so rate of heat transfer=112 KJ/m^2 hr ")
disp("Q=A*h1*(T1-T2)=k_steel*A*(T2-T3)/deltax_steel=k_wool*A*(T3-T4)/deltax_wool")
disp("Q=k_steel*A*(T4-T5)/deltax_steel=A*h6*(T5-T6)")
disp("substituting,T2=T1-(Q/(A*h1))in degree celcius")
T2=T1-(Q/(A*h1))
disp("so temperature of outer wall,T2=23.6 oc")
disp("T3=T2-(Q*deltax_steel/(k_steel*A))in degree ")
T3=T2-(Q*deltax_steel/(k_steel*A))
disp("so temperature at interface of outer steel wall and wool,T3=23.59 oc")
disp("T4=T3-(Q*deltax_wool/(k_wool*A))in degree celcius")
T4=T3-(Q*deltax_wool/(k_wool*A))
disp("so temperature at interface of wool and inside steel wall,T4=6.09 oc")
disp("T5=T4-(Q*deltax_steel/(k_steel*A))in degree celcius")
T5=T4-(Q*deltax_steel/(k_steel*A))
disp("so temperature at inside of inner steel wall,T5=6.08 oc")










