
// Variable Declaration
max_dm_kW = 150.0       //Maximum demand(kW)
pf = 0.85               //Average power factor
rate = 90.0             //Cost of maximum demand(Rs/kVA)
E_rate = 0.3            //Cost of energy consumed(Rs)
lf = 0.65               //Annual load factor            

// Calculation Section
max_dm_kVA = max_dm_kW/pf                //Maximum demand(kVA)
annual_chg_kVA = rate*max_dm_kVA         //Annual fixed charges based on max demand(Rs)
E_kWh = lf*365*24*max_dm_kW              //Energy consumed per annum(kWh)
annual_E_chg = E_kWh*E_rate              //Annual energy charges(Rs)
annual_elect_charge = annual_chg_kVA + annual_E_chg     //Annual electricity charge to be paid(Rs)

// Result Section
printf('Annual electricity charges to be paid by consumer = Rs %.2f' ,annual_elect_charge)
