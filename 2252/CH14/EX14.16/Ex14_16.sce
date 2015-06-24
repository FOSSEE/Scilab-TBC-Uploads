
Woc=60//power consumed in OC test at 220 V
//iron losses in transformer are proportional to square of applied voltage
Wi=60*(200/220)^2//iron losses at normal voltage of 200 V
Is=5D+3/400//full load current on HV side
//for SC test
Isc=10//current
Wsc=120//power consumed
Wcu=(Is/Isc)^2*Wsc//full load copper losses
e=(5D+3*.8)/(5D+3*.8+Wi+Wcu)*100
mprintf("Efficiency at full load=%f percent",e)
