
// Variable Declaration
P = 75.0                //Power(kW)
cost_plant = 3000.0     //Cost of plant(Rs/kW)
cost_td = 30.0*10**5    //Cost of transmission & distribution(Rs)
interest = 0.15         //Interest,insurance charges(/annum)
depreciation = 0.05     //Depreciation(/annum)
cost_fix_mt = 4.0*10**5 //Fixed maintainance(Rs)
cost_var_mt = 6.0*10**5 //Variable maintainance(Rs)
cost_fuel = 10.0*10**6  //Fuel cost(Rs/annum)
cost_opr = 3.0*10**6    //Operation cost(Rs/annum)
max_demand = 70.0       //Maximum demand(MW)
df = 1.6                //Diversity factor b/w consumers
lf = 0.6                //Annual load factor
dividend = 10**6        //Dividend to shareholders(Rs/annum)
per_L = 0.10            //Total energy loss(% of generated energy)


// Calculation Section
cost = cost_plant*P*1000                                        //Cost of plant(Rs)
per_value = interest+depreciation                               //Total interest & depreciation(/annum)
cost_fix_ann = (cost+cost_opr)*per_value+cost_fix_mt+dividend   //Total fixed cost(Rs)
cost_var_ann = cost_fuel+cost_opr+cost_var_mt                   //Total running cost(Rs)
E_gen_ann = max_demand*1000*24*365*lf                           //Energy generated per annum(kWh)
E_loss = per_L*E_gen_ann                                        //Energy losses(kWh)
E_sold = E_gen_ann - E_loss                                     //Energy sold(kWh)
sum_max_demand = df*max_demand*1000                             //Sum of maximum demand of consumers(kW)
charge_max_demand = cost_fix_ann/sum_max_demand                 //Charge to consumers per kW of max demand per year(Rs)
charge_energy = cost_var_ann/E_sold*100                         //Charge for energy(paise per kWh)


// Result Section
printf('Two-part tariff is :')
printf('Rs %.2f per kW of maximum demand per year + %.1f paise per kWh consumed' ,charge_max_demand,charge_energy)
