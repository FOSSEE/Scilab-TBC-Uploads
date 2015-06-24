//all the quantities are expressed in SI units

V1 =114.2;                 //velocity of airplane at 4km altitude
rho = 0.81935;             //density of air at 4km altitude
q1 = 1/2*rho*(V1^2)        //dynamic pressure experienced by the aircraft at 4km altitude
rho_sl = 1.23;             //density of air at sea level

//according to the question
q_sl = q1;                 //sealevel dynamic pressure

//thus the equivallent air speed at sea level is given by
Ve = sqrt(2*q_sl/rho_sl);

printf("\nRESULTS\n--------\nThe equivallent airspeed of the airplane is\n              Ve = %2.1f m/s",Ve)