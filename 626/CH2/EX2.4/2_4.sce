clear;
clc;
close;
disp("Example2.4")
u1=2 //speed of water going on the plate. X-component in m/s.
v1=0 //speed of water going on the plate. Y-component in m/s.
u2=1 //speed of water going on the plate. X-component in m/s.
v2=1.73 //speed of water going on the plate Y-coponent in m/s.
m=0.1 //rate of flow of mass of the water on the plate in kg/s.
//Using Newton's second law.
Fx=m*(u2-u1); //X-component of force exerted by water
disp(Fx,"Axial force needed to support the plate in N:")
Fy=m*(v2-v1); //Y-component of force exerted by water.
disp(Fy,"Lateral force needed to support the plate in N:")
