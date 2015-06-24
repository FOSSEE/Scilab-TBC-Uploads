//All the quantities are expressed in SI units

p1 = 1;                                            //ambient pressure upstream of shock


//(a)
//for M = 2;
p0_1 = 7.824*p1;                                   //total pressure upstream of shock
pressure_ratio = 0.7209;                           //ratio of total pressure accross the shock
p0_2 = pressure_ratio*p0_1;                        //total pressure downstream of shock

//thus the total loss of pressure is given by
pressure_loss = p0_1 - p0_2;

printf("\nRESULTS\n---------\nThe total pressure loss is:\n(a)        P0_loss = %1.3f atm\n",pressure_loss)

//similarly
//(b)
//for M = 4;
p0_1 = 151.8*p1;
pressure_ratio = 0.1388;
p0_2 = pressure_ratio*p0_1;

//thus the total loss of pressure is given by
pressure_loss = p0_1 - p0_2;

printf("\n(b)        P0_loss = %3.1f atm\n",pressure_loss)