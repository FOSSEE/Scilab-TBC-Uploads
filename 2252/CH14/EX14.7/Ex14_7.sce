
Wcu_fl=425//copper losses at full load
//calculating efficiency at full load, unity pf
Pout=50*1000*1//output
e=Pout/(Pout+350+425)*100
mprintf("Efficiency at full load, unity pf=%f percent\n",e)
//calculating efficiency at half load, unity pf
Pout=Pout/2//output
Wi=350//iron losses
Wcu=Wcu_fl/2^2//copper losses
e=Pout/(Pout+Wi+Wcu)*100
mprintf("Efficiency at half load, unity pf=%f percent\n",e)
//calculating efficiency at full load, 0.8 pf lagging
Pout=(50D+3)*.8//output
e=Pout/(Pout+Wi+Wcu_fl)*100
mprintf("Efficiency at full load, .8 pf lagging=%f percent\n",e)
//calculating maximum efficiency
Wcu=Wi//copper losses
x=sqrt(Wcu/Wcu_fl)//load at which maximum efficiency occurs
mprintf("At %f percent of the full load, maximum efficiency will occur\n",x*100)
Pout=(x*50D+3*1)
e_max=Pout/(Pout+2*Wi)*100
mprintf("Maximum efficiency=%f percent\nLoad at maximum efficiency=%f kVA",e_max,Pout/1000)

