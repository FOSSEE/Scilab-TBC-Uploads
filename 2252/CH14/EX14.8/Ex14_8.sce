
Wi=1100//iron losses
Wcu=400//copper losses at 50% load
Is=100*1000/10000//secondary full load current
//calculating efficiency at 25% load, unity pf
Is1=Is/4//secondary current
Wcu1=(25/50)^2*400//copper losses
Pout=.25*100*1000//output
e=Pout/(Pout+Wcu1+Wi)*100
mprintf("Efficiency at 25 percent load, unity pf=%f percent\n",e)
//calculating efficiency at 25% load, 0.8 pf
e=(Pout*.8)/(Pout*.8+Wcu1+Wi)*100
mprintf("Efficiency at 25 percent load, .8 pf=%f percent\n",e)
//calculating efficiency at 50% load,unity pf
Pout=.5*100*1000//output
e=Pout/(Pout+Wi+Wcu)*100
mprintf("Efficiency at 50 percent load, unity pf=%f percent\n",e)
//calculating efficiency at 50% load, 0.8 pf
e=Pout*.8/(Pout*.8+Wi+Wcu)*100
mprintf("Efficiency at 50 percent load, 0.8 pf=%f percent\n",e)
//calculating efficiency at full load, unity pf
Pout=100*1000//output
Wcu3=(10/5)^2*400//copper losses
e=Pout/(Pout+Wcu3+Wi)*100
mprintf("Efficiency at full load, unity pf=%f percent\n",e)
//calculating efficiency at full load, .8 pf 
e=(Pout*.8)/(Pout*.8+Wcu3+Wi)*100
mprintf("Efficiency at full load, 0.8 pf=%f percent\n",e)
//calculating load for max efficiency at unity pf
x=sqrt(Wi/Wcu3)
mprintf("Load for max efficiency=%f kVA\nLoad for max efficiency will remain the same irrespective of power factor",x*Pout/1000)
//error in the textbook answer for efficiency at 50 % load at unity pf as well as at .8 pf

