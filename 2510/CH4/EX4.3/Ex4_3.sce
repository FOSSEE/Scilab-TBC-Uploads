//Variable declaration:
R1_in = 10000                   //Rate of fuel fed into the boiler (lb/h)
R2_1n = 20000                   //Rate of air fed into the boiler (lb/h)
R3_in = 2000                    //Rate of methane fed into the boiler (lb/h)

//Calculations:
m_in = R1_in + R2_1n + R3_in    //Rate of mass in (lb/h)
m_out = m_in                    //Rate of mass out (lb/h)

//Result:
printf ("The rate of the product gases exit from the incinerator is : %.0f lb/h",m_in)
