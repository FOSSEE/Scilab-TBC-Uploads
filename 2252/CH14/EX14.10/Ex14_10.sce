
e_max=.98//max efficiency
Pout=.75*500*1000//output of transformer at max efficiency
Wi=Pout*(1-e_max)/(2*e_max)
Wcu1=Wi//copper losses at 3/4 full load
Wcu=Wcu1/(.75)^2//copper losses at full load
Is=500*1000/500//secondary current
Vs=500//secondary voltage
VR=(Wcu/(Vs*Is)*.8+sqrt(.1^2-(Wcu/(Vs*Is))^2)*.6)*100
mprintf("Regulation at full load, 0.8 pf lagging=%f percent",VR)
