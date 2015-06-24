//All the quantities are expressed in SI units

alpha = 4; //angle of attack in degrees
c_l = 0.85; //lift coefficient
c_m_c4 = -0.09; //coefficient of moment about the quarter chord
x_cp = 1/4 - (c_m_c4/c_l); //the location centre of pressure with respect to chord

printf("\n\nRESULTS\n--------\nXcp/C = %1.3f\n\n",x_cp)