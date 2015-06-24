//function to calculate the water flow rate
//V(1) = water flow rate at 1 in m/s
//V(2) = water flow rate at 2 in m/s
//**Already defined variables**
//A(1) = cross-sectional area 1 in m^2
//A(2) = cross-sectional area 2 in m^2
//h = vertical height difference in water level in m (h(2)-h(1))
//deltaP = difference in pressure in N/m^2 (P(2)-P(1))
//density = density of fluid in kg/m^3
g = 9.8 //acceleration due to gravity in m/s^2
function [f] = Bernauli (V)
    f = zeros(2,1)
    //equation of continuity
    f(1) = A(1)*V(1) - A(2)*V(2)
    //Bernauli's equation
    f(2) = (V(2)^2 - V(1)^2) + 2*g*h + 2*deltaP/density
endfunction