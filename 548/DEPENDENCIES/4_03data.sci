//Application of Bernoulli's equation.an airfoil placed in a flow of air
P1=1.013;//pressure at far upstream  of airfoil in bar
V1=160*5/18  //velocity at far upstream  of airfoil in m/s
D=1.23;//density at far upstream of airfoil in Kg/m^3
Pa=0.99;//pressure at a point Aon airfoil in bar
//velocity is low enough so we can assume incompressible flow,so
disp("P1+(D*V1^2/2)=Pa+(D*V2^2/2)","Bernoulli equation");
Va=[(2*(P1-Pa)/D)+(V1)^2]^0.5