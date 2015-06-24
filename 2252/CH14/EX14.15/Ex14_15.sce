
W0=1300//power consumed in no load test
Wsc=2400//power consumed in short circuit test performed at full load current
Wi=W0
Wcu=Wsc
Pout=(8*200*.8+10*.5*200*1)*10^3//total output
Wit=1300*24//total iron losses
Wcut=2400*8+2400/4*10//total copper losses
e=Pout/(Pout+Wit+Wcut)*100
mprintf("All day efficiency=%f percent",e)
