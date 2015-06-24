//all the quantities are expressed in SI units

V2 = 100*1609/3600;        //test section flow velocity converted from miles per hour to meters per second
p_atm = 101000;            //atmospheric pressure
p2 = p_atm;                //pressure of the test section which is vented to atmosphere
rho = 1.23;                //air density at sea level
ratio = 10;                //contraction ratio of the nozzle

//the pressure difference in the wind tunnel can be calculated as
delta_p = rho/2*(V2^2)*(1-(1/ratio^2));

//thus the reservoir pressure can be given as
p1 = p2 + delta_p;

p1_atm = p1/p_atm;         //reservoir pressure expressed in units of atm

printf("\nRESULTS\n--------\nThe reservoir pressure is\n              p1 = %1.2f atm",p1_atm)