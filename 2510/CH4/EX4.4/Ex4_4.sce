//Variable declaration:
E1 = 65                             //Efficiency of spray tower (%)
E2 = 98                             //Efficiency of packed column (%)
m_in = 76                           //Mass flow rate of HCl entering the system (lb/h)

//Calculations:
m1_out = (1 - E1/100.0)*m_in        //Mass flow rate of HCl leaving the spray tower (lb/h)
m2_out = (1 - E2/100.0)*m1_out      //Mass flow rate of HCl entering the packed column (lb/h)
E = (m_in - m2_out)/m_in            //Overall fractional efficiency (%)

//Result:
printf ("The mass flow rate of HCl leaving the spray tower is : %.2f lb/h HCL",m1_out)
printf ("The mass flow rate of HCl entering the packed column is : %.3f lb/h HCL",m2_out)
printf ("The overall fractional efficiency is : %.2f %%",E*100)
