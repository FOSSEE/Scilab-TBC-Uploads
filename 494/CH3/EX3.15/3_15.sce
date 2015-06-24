//All the quantities are expressed in SI units

theta = [180-asind(-5/4/%pi) 360+asind(-5/4/%pi)];        //location of the stagnation points

printf("\nRESULTS\n--------\nThe angular location of the stagnation points are\n              theta = %3.1f, %3.1f degrees",theta(1),theta(2))

function temp = Cp(thet)
    temp = 0.367 -3.183*sind(thet) - 4*(sind(thet)^2);    //Cp written as a function of theta
endfunction

printf("\nRESULTS\n--------\nThe value of Cp on top of the cylinder is\n              Cp = %1.2f",Cp(90))

[k] = roots([-4 -3.183 0.367]);

theta_2 = 180/%pi*[%pi-asin(k(1)) 2*%pi+asin(k(1)) asin(k(2)) %pi-asin(k(2))];

printf("\nRESULTS\n--------\nThe angular location of points on the cylinder where p = p_inf is\n              theta = %3.1f, %3.2f, %1.2f, %3.1f",theta_2(1),theta_2(2),theta_2(3),theta_2(4))

printf("\nRESULTS\n--------\nThe value of Cp at the bottom of the cylinder is\n              Cp = %1.2f",Cp(270))