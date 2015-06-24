//all the quantities are expressed in SI units

//When p = p_inf, Cp = 0, thus
//1-4*(sin(theta)^2) = 0
//thus theta can be given as

theta = [asind(1/2) 180-asind(1/2) 180-asind(-1/2) 360+asind(-1/2)];            //sine inverse of 1/2 and -1/2 where theta varies from 0 to 360 degrees

printf("\nRESULTS\n--------\nThe angular locations where surface pressure equals freestream pressure are\n              theta = %2.0f, %2.0f, %2.0f, %2.0f degrees",theta(1),theta(2),theta(3),theta(4))